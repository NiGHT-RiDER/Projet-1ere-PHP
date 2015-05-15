<?php
class teacherHomeController 
{
	

/***
 *     __   __        ___     __                                                     
 *    |  \ /  \ |\ | |__     |__) \ /                                                
 *    |__/ \__/ | \| |___    |__)  |                                                 
 *                                                                                   
 *     __   __   __   __             __          __      __  ___  ___  ___           
 *    |__) /  \ / _` |  \  /\  |\ | /  \ \  / | /  `    /__`  |  |__  |__   /\  |\ | 
 *    |__) \__/ \__> |__/ /~~\ | \| \__/  \/  | \__,    .__/  |  |___ |    /~~\ | \| 
 *                                                                                   
 */


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
		
		$students = array();
		$students=Db::getInstance()->selectStudents();
        require_once('views/header.php');
        require_once('views/menuTeacher.php');  
		require_once('views/listStudentTeacher.php');
    }


}
?>
