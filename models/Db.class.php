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

    public function teacherExists($no)
    {
        $query = 'SELECT * from teachers WHERE login = ' . '"' . $no . '"';
        $result = $this->_db->query($query); 
        $authenticated = false ; 
        if ($result->rowcount()!=0) {
            $authenticated = true;
        }
        return $authenticated;
    } 

    public function studentExists($no)
    {
        $query = 'SELECT * FROM students WHERE enrolment='. '"' . $no . '"';
        $result = $this->_db->query($query); 
        $authenticated = false ; 
        if ($result->rowcount()!=0) {
            $authenticated = true;
        }
        return $authenticated;
    } 

    public function selectTeacher($id)
    {
        $query = 'SELECT * FROM teachers WHERE login=' . '"' . $id . '"' ; 
        $result = $this->_db->query($query);
        $row = $result->fetch();	
        return new Teacher($row->login, $row->name , $row->surname , $row->password);
    }


    public function selectStudent($id)
    {
        $query = 'SELECT * FROM students WHERE enrolment=' . '"' . $id . '"' ; 
        $result = $this->_db->query($query);
        $row = $result->fetch();	
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
        $studentsData = 'data/etudiants.csv';
        $teachersData = 'data/professeurs.csv';

        //students
        $studentsQuery = 'SELECT * FROM students ';         
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
        $teachersQuery = 'SELECT * FROM teachers ';         
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

}
?>
