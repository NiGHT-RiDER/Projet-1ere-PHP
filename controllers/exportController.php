<?php
class exportController 
{
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
		if(isset($_POST['csvExport']))
		{
			header('Content-Type: text/csv; charset=utf-8');
			header('Content-Disposition: attachment; filename=data.csv');		
			$output = fopen('php://output', 'w');
			ob_end_clean();
			fwrite($output, ('query_id;query_nb;question;num_level;id_level;author;last_update;topic' . "\r\n"));
			
			$rows = Db::getInstance()->selectQueries($_POST['csvExport']);
			
			foreach ($rows as $row)
				fwrite($output, $row[0] . ';' . $row[1] . ';' . $row[2] . ';' . $row[3] . ';' . $row[4] . ';' . $row[5] . ';' . $row[6] . ';' . $row[7] . "\r\n");
			fclose($output);
			exit();
		}
		
		$levels = Db::getInstance()->selectLevels();
		// output headers so that the file is downloaded rather than displayed
		
        require_once('views/header.php');
        require_once('views/menuTeacher.php');
		require_once('views/csvExport.php');
    }

}
