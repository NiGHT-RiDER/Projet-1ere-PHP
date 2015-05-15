<?php
class Db
{
    private static $instance = null;
    private $_db;

    private function __construct()
    {
        try {
            $this->_db = new PDO('mysql:host=localhost;dbname=php_project', 'root', 'root');
            $this->_db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            $this->_db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
        } 
        catch (PDOException $e) {
            die('Erreur de connexion à la base de données : '.$e->getMessage());
        }
    }

    // Singleton Pattern 
    public static function getInstance()
    {
        if (is_null(self::$instance)) {
            self::$instance = new Db();
        }
        return self::$instance;
    }


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


    public function teacherExists($no)
    {
        $query         = 'SELECT * from teachers WHERE login = ' . '"' . $no . '"';
        $result        = $this->_db->query($query); 
        $authenticated = false ; 
        if ($result->rowcount()!=0) {
            $authenticated = true;
        }
        return $authenticated;
    } 

    public function studentExists($no)
    {
        $query  = 'SELECT * FROM students WHERE enrolment='. '"' . $no . '"';
        $result = $this->_db->query($query); 
        $authenticated = false ; 
        if ($result->rowcount()!=0) {
            $authenticated = true;
        }
        return $authenticated;
    } 

    public function selectTeacher($id)
    {
        $query  = 'SELECT * FROM teachers WHERE login=' . '"' . $id . '"' ; 
        $result = $this->_db->query($query);
        $row    = $result->fetch();	
        return new Teacher($row->login, $row->name , $row->surname , $row->password);
    }


    public function selectStudent($id)
    {
        $query  = 'SELECT * FROM students WHERE enrolment=' . '"' . $id . '"' ; 
        $result = $this->_db->query($query);
        $row    = $result->fetch();	
        return new Student($row->enrolment , $row->name , $row->surname , $row->password);
    }

    public function updateTeacherPassword($enrolment , $password)
    {
        $query = 'UPDATE teachers SET login =' . '"' . $enrolment . '"' . ' , password =' . "'" . $password . "'" . 'WHERE login= ' . '"' . $enrolment . '"' ; 
        $this->_db->prepare($query)->execute();
    }
    public function updateStudentPassword($enrolment , $password)
    {
        $query = 'UPDATE students SET enrolment =' . '"' . $enrolment . '"' . ' , password =' . "'" . $password . "'" . 'WHERE enrolment = ' . '"' . $enrolment . '"' ; 
        $this->_db->prepare($query)->execute();
    }

    public function insertStudent($student)
    {
        $query = 'INSERT INTO students (`enrolment`, `name`, `surname` )'
                .' VALUES (' ."'".   $student->id() ."'". ',' .'"'. $student->name() .'"'. ',' 
                ."'" .$student->surname()."'".  ')';
        $this->_db->prepare($query)->execute();
    }

    public function insertTeacher($teacher)
    {
        $query = 'INSERT INTO teachers (`login`, `name`, `surname`, `password`) '
                .' VALUES (' ."'" . $teacher->id() ."'" . ',' ."'" .  $teacher->name()."'" . ',' 
                . "'" .$teacher->surname() ."'". ',' ."'". $teacher->password() ."'". ')';
        $this->_db->prepare($query)->execute();
    } 

    public function emptyDBInitialisation()
    {
		// creates and initialises the database if it needs to at the launch of the app 
		$queries = array();
		$queries[0] = "CREATE DATABASE IF NOT EXISTS `php_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin";
		
		$queries[1] = "USE `php_project`";
		
		$queries[2] = "CREATE TABLE IF NOT EXISTS `answers` (
					  `enrolment` varchar(45) CHARACTER SET latin1 NOT NULL,
					  `query_id` int(11) NOT NULL,
					  `answer` varchar(255) CHARACTER SET latin1 NOT NULL,
					  PRIMARY KEY (`enrolment`,`query_id`),
					  KEY `fk_students_has_queries_queries1_idx` (`query_id`),
					  KEY `fk_students_has_queries_students1_idx` (`enrolment`)
					) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin";
					
		$queries[3] = "CREATE TABLE IF NOT EXISTS `levels` (
					  `id_levels` int(11) NOT NULL AUTO_INCREMENT,
					  `level_nb` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
					  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
					  PRIMARY KEY (`id_levels`)
					) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;";
					
		$queries[4] = "CREATE TABLE IF NOT EXISTS `queries` (
					  `query_id` int(11) NOT NULL AUTO_INCREMENT,
					  `query_nb` varchar(45) CHARACTER SET latin1 NOT NULL,
					  `question` varchar(255) CHARACTER SET latin1 NOT NULL,
					  `num_level` varchar(45) CHARACTER SET latin1 NOT NULL,
					  `id_level` int(11) NOT NULL,
					  `author` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
					  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
					  `topic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
					  `query` varchar(255) CHARACTER SET latin1 NOT NULL,
					  PRIMARY KEY (`query_id`),
					  KEY `fk_queries_levels_idx` (`id_level`),
					  KEY `fk_queries_teachers1_idx` (`author`)
					) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1720 ;";
					
		$queries[5] = "CREATE TABLE IF NOT EXISTS `students` (
					  `enrolment` varchar(45) CHARACTER SET latin1 NOT NULL,
					  `name` varchar(90) COLLATE utf8_bin NOT NULL,
					  `surname` varchar(90) COLLATE utf8_bin NOT NULL,
					  `password` varchar(45) COLLATE utf8_bin DEFAULT NULL,
					  PRIMARY KEY (`enrolment`)
					) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
					
		$queries[6] = "CREATE TABLE IF NOT EXISTS `teachers` (
					  `login` varchar(255) CHARACTER SET latin1 NOT NULL,
					  `name` varchar(45) CHARACTER SET latin1 NOT NULL,
					  `surname` varchar(45) CHARACTER SET latin1 NOT NULL,
					  `password` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
					  PRIMARY KEY (`login`)
					) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
					
		$queries[7] = "ALTER TABLE `answers`
					  ADD CONSTRAINT `fk_query_id` FOREIGN KEY (`query_id`) REFERENCES `queries` (`query_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
					  ADD CONSTRAINT `fk_students_has_queries_students1` FOREIGN KEY (`enrolment`) REFERENCES `students` (`enrolment`) ON DELETE NO ACTION ON UPDATE NO ACTION;";
					  
		$queries[8] = "ALTER TABLE `queries`
					  ADD CONSTRAINT `fk_queries_levels` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id_levels`) ON DELETE NO ACTION ON UPDATE NO ACTION,
					  ADD CONSTRAINT `fk_queries_teachers1` FOREIGN KEY (`author`) REFERENCES `teachers` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;";
					  
		foreach($queries as $query){
			try{
				$this->_db->prepare($query)->execute();
			} catch (Exception $e) {
				//var_dump($query);
			}
		}
		
    
		$studentsData = 'data/etudiants.csv';
        $teachersData = 'data/professeurs.csv';
        //students
        $studentsQuery  = 'SELECT * FROM students ';         
        $studentsResult = $this->_db->query($studentsQuery);		
        if($studentsResult->rowcount() == 0)
        {
            $content = file($studentsData); 
			foreach ($content as $index=>$line){
			if($index != 0){
					preg_match('/(.*);(.*);(.*);(.*)/', $line, $result);
                    $resultCorrected = str_replace('"','', $result);
                    $student = new Student($resultCorrected[1],$resultCorrected[2], $resultCorrected[3] , null);
					$this->insertStudent($student);
				}
			}			
        }

        // teachers
        $teachersQuery  = 'SELECT * FROM teachers ';         
        $teachersResult = $this->_db->query($teachersQuery);		
        if($teachersResult->rowcount() == 0)
        {
            $content = file($teachersData); 
			foreach ($content as $index=>$line){
			if($index != 0){
					preg_match('/(.*);(.*);(.*)/', $line, $result);
                    $teacher= new Student($result[1],$result[2], $result[3] , null);
					$this->insertTeacher($teacher);
				}
			}			
        }
    }
	
	public function selectStudents()
	{
		$query  = "SELECT * FROM php_project.students";
		$result = $this->_db->query($query);
		$table  = array();
		if ($result->rowCount() != 0){
			while($row = $result->fetch()){
				$table[] = array ($row->enrolment, $row->name, $row->surname , $row->password , $this->getPercentage($row->enrolment) );
			}
		}
		return $table;
	}
	
	public function getPercentage($enrolment)
	{
		$query  = 'SELECT COUNT(DISTINCT answers.enrolment) / COUNT(DISTINCT queries.query_id) as result
			       FROM answers , queries 
				   WHERE answers.enrolment=' . '"' . $enrolment . '"' ; 
<<<<<<< HEAD
		
=======
>>>>>>> b1904ec1fccd3f9737dd7e4533fba76b15c1ea19
        $result = $this->_db->query($query);
        $row    = $result->fetch();	
		return floatval($row->result)  * 100 ;
	}
	
	public function getStudentAnswers($enrolment)
	{
<<<<<<< HEAD
		$query  = 'SELECT q.id_level , q.query_nb , q.question , 
					(SELECT DISTINCT answer FROM answers  where enrolment = ' . '"' . $enrolment . '"' . '  AND answers.query_id = q.query_id) 
					as answer 
			      FROM queries  q
				  WHERE q.query_id in (select query_id from answers where enrolment = ' . '"' . $enrolment . '"' . ') ' ; 
=======
		$query  = 'SELECT DISTINCT id_level  , query_nb  , question , answer
			      FROM answers , queries 
				  WHERE answers.enrolment=' . '"' . $enrolment . '"' ; 
>>>>>>> b1904ec1fccd3f9737dd7e4533fba76b15c1ea19
        $result = $this->_db->query($query);
		$table  = array();
		if ($result->rowCount() != 0){
			while($row = $result->fetch()){
				$table[] = array ($row->id_level, $row->query_nb, $row->question, $row->answer);
			}
		}
		return $table ;
	}
	
	public function selectLevels()
	{
		$query  = 'SELECT `id_levels`, `level_nb`, `description` FROM `levels` '; 
        $result = $this->_db->query($query);
		$table  = array();
		if ($result->rowCount() != 0){
			while($row = $result->fetch()){
				$table[] = array ($row->id_levels,$row->level_nb,$row->description);
			}
		}
		return $table ;
	}
	
    // select all queries from a specified level 
	public function selectQueries($id)
	{
<<<<<<< HEAD
		$query  = 'SELECT  * FROM `queries` WHERE  id_level =' . "'" .  $id ."'"; 
=======
		$query  = 'SELECT  query_id ,`query_nb`, `topic`, `question`, `query`, `num_level` ,`author`, `last_update` FROM `queries` WHERE  id_level =' . "'" .  $id ."'"; 
>>>>>>> b1904ec1fccd3f9737dd7e4533fba76b15c1ea19
        $result = $this->_db->query($query);
		$table  = array();
		if ($result->rowCount() != 0){
			while($row = $result->fetch()){
<<<<<<< HEAD
				$table[] = new Query ($row->query_id , $row->query_nb , $row->topic, $row->id_level  ,  $row->num_level, 
                                  $row->question , $row->author , $row->last_update  , $row->query);
								  
=======
				$table[] = array ($row->query_id , $row->question , $row->query_nb, $row->topic  ,  $row->query,
                                  $row->author , $row->last_update );
>>>>>>> b1904ec1fccd3f9737dd7e4533fba76b15c1ea19
			}
		}
		return $table ;
	}	

    // checks if there is a level having the same name as the user input 
	public function levelExists($name , $num){
		$query  = "SELECT COUNT(id_levels) as res FROM levels WHERE description = '" . $name."' AND level_nb    = '". $num ."' " ;
		$result = $this->_db->query($query);
		$row    = $result->fetch();
		return intval($row->res) > 0; 
	}
	
    // insert a new level into the levels table 
    public function insertNewLevel($num, $name)
    {
        $query = 'INSERT INTO levels (`level_nb`, `description` ) VALUES (' ."'". $num ."'". ',' .'"'. $name.'"'.')';
        $this->_db->prepare($query)->execute();
    }

    // get the latest id_level inserted in the level table 
    public function selectLatestLevel()
    {
        $query  = "SELECT id_levels FROM levels ORDER BY id_levels DESC LIMIT 1";
        $result = $this->_db->query($query);
        $row    = $result->fetch(); 
        return $row->id_levels;
    }
    
    // selects the id level by matching it with a description and a num      
    public function selectLevel($lvlNum , $lvlName)
    {
        $query  = "SELECT id_levels FROM levels WHERE description = " ."'". $lvlName ."'". " AND level_nb = "."'".$lvlNum."'" ;  
        $result = $this->_db->query($query);
        $row    = $result->fetch();
        return $row->id_levels ; 
    }
    
    // insert a query into the queries table 
    public function insertQuery($query_nb, $topic , $question , $query , $num_level , $id_level )
    {
       // we use quote($var)  so special characters are escaped 
        $update = null ; 
        $teacher = $_SESSION['login'];
        $query = "INSERT INTO queries (query_nb , topic , question , query , id_level , num_level , last_update ) VALUES (".
              $this->_db->quote($query_nb)   . ","
             .$this->_db->quote($topic)      . "," 
             .$this->_db->quote($question)   . "," 
             .$this->_db->quote($query)      . ","
             .$this->_db->quote($num_level)  . "," 
             .$this->_db->quote($id_level)  . "," 
             .$this->_db->quote($update) . ")";      
        $this->_db->prepare($query)->execute();
    }
	
	//updates a question in the queries table by modifying the question , topic , number and query of it 
	public function updateQuery($question , $query_nb , $topic , $query , $query_id , $author , $num_level)
	{	
		$query = 	"UPDATE `queries` 
					 SET 		`query_nb`= " . $this->_db->quote($query_nb) . ",
								`question`=" . $this->_db->quote($question) . ",
								`author`  =" . $this->_db->quote($author) . ",
								`num_level`  =" . $this->_db->quote($num_level) . ",
								`last_update`= NOW() ,
								`topic`=" . $this->_db->quote($topic) . ",
								`query`=" . $this->_db->quote($query) . "
					WHERE 
								query_id = " .$query_id . "";
		var_dump($query);	
		$this->_db->prepare($query)->execute();
	}
	



}
?>
