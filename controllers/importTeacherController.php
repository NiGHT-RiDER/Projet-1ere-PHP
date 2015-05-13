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
            // stores the post variables for simpler use 
            $lvlNum  = $_POST["lvlNum"];
            $lvlName = $_POST["lvlDescription"];
            try {
                $file = $_FILES["userFile"]["tmp_name"];
                if(file_exists($file)){
                    $content = file($file);
                    $idLevel = "";
                    /* see if the both the name and the num are null or if the level doesn't already exists 
                       if that is the case we must create a new level and get its id */ 
                    if ( (empty($lvlNum) && empty($lvlName)) || !Db::getInstance()->levelExists($lvlName , $lvlNum))
                    {
                        Db::getInstance()->insertNewLevel($lvlNum , $lvlName);
                        $idLevel = Db::getInstance()->selectLatestLevel();
                    } else {
                        // otherwise we just get the id of the existing level 
                        $idLevel = Db::getInstance()->selectLevel($lvlNum , $lvlName);
                    }
                    // starts at the second line of the file because the first is the header of the csv 
                    for ($i =1; $i < count($content); $i++){
                        // and then fills the database with queries containing no author 
                        preg_match('/(.*);(.*);(.*);(.*);(.*)/', $content[$i], $result);
                        Db::getInstance()->insertQuery($result[1], $result[2],$result[3],$result[4], $idLevel,$result[5]);
                    } 

                }
            } catch (PDOException $e){
                // if the upload failed we return the message error 
                return $e->getMessage(); 
            } 

        }

        require_once('views/header.php');
        require_once('views/menuTeacher.php');    
        require_once('views/importTeacher.php');
    }



}
?>
