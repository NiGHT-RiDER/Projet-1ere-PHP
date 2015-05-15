<?php
	class Query {
		private $_queryId; 
		private $_queryNb; 
		private $_question; 
		private $_numLevel; 
		private $_idLevel;  
		private $_author; 
		private $_lastUpdate; 
		private $_topic; 
		private $_query;
		
		public function __construct($queryId,$queryNb, $topic, $idLevel,$numLevel,
				 $question, $author, $last_update , $query){
					 
			$this->_queryId = $queryId;
			$this->_queryNb=$queryNb;
			$this->_question=$question;
			$this->_numLevel=$numLevel;
			$this->_idLevel=$idLevel;
			$this->_author=$author;
			$this->_topic=$topic;
			$this->_query=$query;
			$this->_lastUpdate=$last_update;
		}
		
		public function queryId ()
		{
			return $this->_queryId;
		}
		
		public function queryNb ()
		{
			return $this->_queryNb;
		}
		public function question ()
		{
			return $this->_question;
		}
		public function numLevel ()
		{
			return $this->_numLevel;
		}
		public function idLevel ()
		{
			return $this->_idLevel;
		}
		public function author ()
		{
			return $this->_author;
		}
		public function lastUpdate ()
		{
			return $this->_lastUpdate;
		}
		public function topic ()
		{
			return $this->_topic;
		}
		public function query ()
		{
			return $this->_query;
		}
		
	
		
	}