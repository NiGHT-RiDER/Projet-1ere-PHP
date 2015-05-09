<?php
class listStudentsAnswersController 
{
    public function __construct()
    {

    }

    public function run()
    {
        if(empty($_SESSION['authenticated']) || $_SESSION['userType'] != 'teacher')
        {
            header('Location:index.php?');
            die();
        }
		
		$notification = "";
		$answers = array();
		if(empty($_POST['answerStudent']))
		{
			$notification ="Vous n'avez pas choisi d'etudiant !";
		}	
		
		if(!empty($_POST['answerStudent']))
		{
			$answers = Db::getInstance()->getStudentAnswers($_POST['answerStudent']);
		}	
        require_once('views/header.php');
        require_once('views/menuTeacher.php');
		require_once('views/listStudentAnswers.php');
    }


}
?>
