<?php
class studentListController 
{
    public function __construct()
    {

    }

    public function run()
    {
        // is the user a teacher ? is he already authenticated ?
        if(empty($_SESSION['authenticated']) || $_SESSION['userType'] != 'teacher')
        {
            header('Location:index.php?');
            die();
        }
        
        require_once('views/header.php');
        require_once('views/menuTeacher.php');
    }

}
