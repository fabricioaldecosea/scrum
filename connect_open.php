<?php
// Parametros para la conexion
@$hostdb = "sql312.epizy.com";//"mysql.hostinger.es"
@$userdb = "epiz_23663526";//"usisiucomuy18"
@$keydb = "2k7rjy9d";//"web1234"
@$database = "epiz_23663526_scrum";//"usisiu"


@$connect_db  = mysql_connect($hostdb, $userdb, $keydb); 
if (!$connect_db) { 
    die('Could not connect: ' . mysql_error()); 
} 

// make foo the current db
@$db_selected = mysql_select_db($database, $connect_db);
if (!$db_selected) {
    die ('Can\'t select table: ' . mysql_error());
}




/*
SET foreign_key_checks = 0;
SET foreign_key_checks = 1;
*/
?>