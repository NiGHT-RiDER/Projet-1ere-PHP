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
    case 'logout':
        require_once(CONTROLLER . 'logoutController.php');
        $controller = new logoutController() ; 
        break;
    case 'teacher':
        require_once(CONTROLLER . 'teacherHomeController.php');
        $controller = new teacherHomeController() ; 
        break;
    case 'student':
        require_once(CONTROLLER . 'studentHomeController.php');
        $controller = new studentHomeController() ; 
        break;
    case 'login':
        require_once(CONTROLLER . 'loginController.php');
        $controller = new loginController();
        break;
    case 'studentList':
        require_once(CONTROLLER . 'studentListController.php');
        $controller = new studentListController();
        break;
    case 'importTeacher':
        require_once(CONTROLLER . 'importTeacherController.php');
        $controller = new importTeacherController();
        break;
    default: 
        require_once( CONTROLLER . 'loginController.php');	
        $controller = new loginController();
        break;
}
$controller->run();

require_once('views/footer.php');
?>
