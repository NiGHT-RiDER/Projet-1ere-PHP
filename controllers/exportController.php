<?php
class exportController 
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
        if(isset($_POST['csvExport']))
        {
            // output headers so that the file is downloaded rather than displayed
            header('Content-Type: text/csv; charset=utf-8');
            header('Content-Disposition: attachment; filename=queries.csv');		
            $output = fopen('php://output', 'w');
            // line used to clean html code inside the output
            ob_end_clean();
            fwrite($output, ('num;theme;enonce;query;nb' . "\n" ));
            $rows = Db::getInstance()->selectQueries($_POST['csvExport']);
			foreach ($rows as $query)
                fwrite($output,  $query->queryNb() . ';' . $query->topic(). ';' . $query->question() . ';' . $query->query() . ';' . $query->numLevel(). "\n" );

            fclose($output);
            exit();
        }

        $levels = Db::getInstance()->selectLevels();
        require_once('views/header.php');
        require_once('views/menuTeacher.php');
        require_once('views/csvExport.php');
    }

}
