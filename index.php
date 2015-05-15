<?php
// starts new or exiting session
session_start();

// definition of the global variables 
define('VIEWS','views/');
define('CONTROLLER','controllers/');
define('MODELS','models/');

// automation of the requires
function chargeClasses($class) 
{
    require 'models/' . $class . '.class.php';
}
spl_autoload_register('chargeClasses'); 

// verification of the database for empty logins 
Db::getInstance()->emptyDBInitialisation();

$action = (isset($_GET['action'])) ? htmlentities($_GET['action']) : 'default';
switch($action) 
{
    // page that handles the logout 
    case 'logout':
        require_once(CONTROLLER . 'logoutController.php');
        $controller = new logoutController() ; 
        break;
<<<<<<< HEAD
	// page containing the list of queries for the teacher so  he can update it  
    case 'updateQuestions':
        require_once(CONTROLLER . 'teacherUpdateController.php');
        $controller = new teacherUpdateController() ; 
        break;
	// form for updating a query 
    case 'updateQuestionForm':
        require_once(CONTROLLER . 'updateQuestionController.php');
        $controller = new updateQuestionController() ; 
        break;
	// teacher home page
=======
    // teacher startup page 
    case 'updateQuestion':
        require_once(CONTROLLER . 'teacherUpdateController.php');
        $controller = new teacherUpdateController() ; 
        break;
>>>>>>> b1904ec1fccd3f9737dd7e4533fba76b15c1ea19
    case 'teacher':
        require_once(CONTROLLER . 'studentListController.php');
        $controller = new studentListController();
        break;
    // student startup page 
    case 'student':
        require_once(CONTROLLER . 'studentHomeController.php');
        $controller = new studentHomeController() ; 
        break;
    // login page 
    case 'login':
        require_once(CONTROLLER . 'loginController.php');
        $controller = new loginController();
        break;
    // list of students for the teacher 
    case 'studentList':
        require_once(CONTROLLER . 'studentListController.php');
        $controller = new studentListController();
        break;
    // page where teacher imports queries in csv format
    case 'importTeacher':
        require_once(CONTROLLER . 'importTeacherController.php');
        $controller = new importTeacherController();
        break;
    // page where the teacher can see all the answers students have answered 
    case 'listStudentAnswers':
        require_once(CONTROLLER . 'listStudentsAnswersController.php');
        $controller = new listStudentsAnswersController();
        break;
    // page where the teacher can export level in csv format 
    case 'export':
        require_once(CONTROLLER . 'exportController.php');
        $controller = new exportController();
        break;
    // login page 
    default: 
        require_once( CONTROLLER . 'loginController.php');	
        $controller = new loginController();
        break;
}
$controller->run();

require_once('views/footer.php');
?>
