<?php
class studentHomeController 
{
    public function __construct()
    {

    }

    public function run()
    {
        if(empty($_SESSION['authenticated']) || $_SESSION['userType'] != 'student')
        {
            header('Location:index.php?');
            die();
        }
        require_once('views/header.php');
        require_once('views/menuStudent.php');
    }


}
?>
