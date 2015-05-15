<?php
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

class Student{
	private $_id;
	private $_name;
	private $_surname;
	private $_password;
	
	public function __construct($id,$name,$surname,$password){
		$this->_id = $id;
		$this->_name= $name;
		$this->_surname = $surname;
		$this->_password = $password;
	}
   
	
	public function id(){
		return $this->_id;		
	}	
		
	public function surname(){
		return $this->_surname;
	}
	
	public function name(){
		return $this->_name;
	}
	
	public function password(){
		return $this->_password;
	}
}
?>
