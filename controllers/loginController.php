<?php
class loginController 
{
    public function __construct()
    {

    }

    public function run()
    {
        // notification variable created for the view  
        $notification='';
        // if a user is already authenticated we redirect him to the correct view 
        if($_SESSION['authenticated'] == true)
        {
            $location = ($_SESSION['userType'] == 'teacher' ) ? 'teacher' : 'student' ;
            header('Location: index.php?action=teacher');
            die();
        } 
       
        // the user is currently not logged , we can proceed 
        // test to see if the user if a teacher or a student otherwise refuse him the access
        $isTeacher = Db::getInstance()->teacherExists(htmlentities($_POST['username']));    
        $isStudent = Db::getInstance()->studentExists(htmlentities($_POST['username']));    

        // not a valid username ... 
        if(!empty($_POST['username']) && $isTeacher == false && $isStudent == false)
        {
            $notification = "Login incorrect !";
        }

        else if($isTeacher == true)
        {
            $teacher = Db::getInstance()->selectTeacher(htmlentities($_POST['username']));
            // we set the password if it's the first login 
            if($this->isFirstLogin($teacher))
            {
                // we set the password if it's the first login ...       
                if(!empty($_POST['password']))
                {
                    Db::getInstance()->updateTeacherPassword($_POST['username'] , $_POST['password']);    
                }
                // otherwise if the password field is empty there is a notification
                else
                {
                    $notification = 'Veuillez inserer un mot de passe pour votre premiere connexion !'; 
                }
            }
            // it's not the first login but is the password correct ?
            else if($teacher->password() != $_POST['password'])
            {
                $notification = 'Mauvais mot de passe !';
            }
            // the user exists and the pass is the good one 
            else 
            {
                $_SESSION['authenticated'] = true ; 
                $_SESSION['userType'] = 'teacher';
                $_SESSION['login'] = $_POST['username']; 
                header("Location: index.php?action=teacher");
                die();
            }
        }
        else if($isStudent == true){

            $student = Db::getInstance()->selectStudent(htmlentities($_POST['username']));
            // if first login 
            if($this->isFirstLogin($student))
            {
                // we set the password if it's the first login ...       
                if(!empty($_POST['password']))
                {
                    Db::getInstance()->updateStudentPassword($_POST['username'] , $_POST['password']);    
                }
                // otherwise if the password field is empty there is a notification
                else
                {
                    $notification = 'Veuillez inserer un mot de passe pour votre premiere connexion !'; 
                }
            }
            // TODO sha1 support for password 
            else if($student->password() != $_POST['password'])
            {
                $notification = 'Mauvais mot de passe ! ';
            }
            else
            {
                $_SESSION['authenticated'] = true ; 
                $_SESSION['userType'] = 'student';
                $_SESSION['login'] = $_POST['username']; 

                header("Location: index.php?action=student");
                die();
            }
        }
        require_once('views/header.php');
        require_once('views/loginForm.php');
    }

    private function isFirstLogin($user)
    {
        if($user->password() == null)
            return true;
        return false;
    }

}
?>
