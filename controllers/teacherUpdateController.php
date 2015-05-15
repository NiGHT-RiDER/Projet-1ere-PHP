<?php
class teacherUpdateController
{
<<<<<<< HEAD


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
        // initialise the empty variables 
        $levelId      = '';
        $queriesArray = array();   

        // is the user a teacher ? is he already authenticated ?
        if(empty($_SESSION['authenticated']) || $_SESSION['userType'] != 'teacher')
        {
            header('Location:index.php?');
            die();
        }

        // if the level is selected then we take the queries 
        if(isset($_POST['level']))
        {
            $queriesArray = Db::getInstance()->selectQueries($_POST['level']);
        }

        $levels = Db::getInstance()->selectLevels();
        require_once('views/header.php');
        require_once('views/menuTeacher.php');
		require_once('views/updateQuestion.php');

    }

}
