<?php 
class logoutController{


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


	public function __construct() {
	
	}
	/*
     * Empties the session array and redirects the user to the login page     
     */	
	public function run(){	
        
		$_SESSION = array();

		header("Location: index.php"); 
		die();
	}
	
} 
?>
