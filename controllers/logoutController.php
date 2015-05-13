<?php 
class logoutController{

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
