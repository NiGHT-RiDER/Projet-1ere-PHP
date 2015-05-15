<?php
class updateQuestionController 
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
		
		// if we came here from the question list then first we store the data so we won't lose it 
		if(!empty($_POST['delete']))
		{
			$_SESSION['queryId'] = $_POST['query_id'];
		}
		
		// if one of the mendatory field is empty we can't insert and we tell the user so 
		if(empty($_POST['question']) || empty($_POST['query_nb'])  || empty($_POST['query']) || empty($_POST['num_level']) )
		{
			$notification = "Tout les champs doivent etre remplis a part le theme";
		}
		
		// the fields needed for the update aren't empty, we can update the question 
		if(!empty($_POST['question']) && !empty($_POST['query_nb'])  && !empty($_POST['query']))
		{
			Db::getInstance()->updateQuery($_POST['question'] , $_POST['query_nb'] , $_POST['topic'] ,$_POST['query'] , $_SESSION['queryId'], $_SESSION['login'] , $_POST['num_level']);
			$notification = "La mise a jour a reussi " ; 
		}
        require_once('views/header.php');
		require_once('views/menuTeacher.php');  
		require_once('views/updateQuestionForm.php');
    }


}

?>