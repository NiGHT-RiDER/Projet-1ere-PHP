<?php
class teacherUpdateController
{
    public function __construct()
    {

    }

    public function run()
    {
        // initialise the empty variables 
        $levelId      = '';
        $queriesArray = '';   

        // is the user a teacher ? is he already authenticated ?
        if(empty($_SESSION['authenticated']) || $_SESSION['userType'] != 'teacher')
        {
            header('Location:index.php?');
            die();
        }

        // if the level is selected then we take the queries 
        if(isset($_POST['level']))
        {
            $levelId      = $_POST['level'];
            $queriesArray = Db::getInstance()->selectQueries($levelId); 
        }

        $levels = Db::getInstance()->selectLevels();
        require_once('views/header.php');
        require_once('views/menuTeacher.php');
        require_once('views/updateQuestion.php');
    }

}
