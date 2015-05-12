<?php
class importTeacherController 
{
    public function __construct()
    {

    }

    public function run()
    {
        // is the user authenticated as a teacher ? 
        if(empty($_SESSION['authenticated']) || $_SESSION['userType'] != 'teacher')
        {
            header('Location:index.php?');
            die();
        }
        // he is logged as a teacher , we can now check if a file has been sent 
        if(!empty($_FILES["userFile"]))
        {
            $lvlNum = $_POST["lvlNum"];
            $lvlName= $_POST["lvlDescription"];
            try {
                $file = $_FILES["userFile"]["tmp_name"];
                if(file_exists($file)){
                    $content = file($file);
                    /* see if the both the name and the num are null or if the level doesn't already exists 
                     if that is the case we must create a new level */ 
                    if ( (empty($lvlNum) && empty($lvlName)) || !Db::getInstance()->levelExists($lvlName , $lvlNum))
                    {
                         Db::getInstance()->insertNewLevel($lvlNum , $lvlName);
                    }
                }
            } catch (PDOException $e){
                // if the upload failed for instance if the file is not file containing queries we return the message error 
                return $e->getMessage(); 
            } 

        }

        require_once('views/header.php');
        require_once('views/menuTeacher.php');    
        require_once('views/importTeacher.php');
    }



}
?>
