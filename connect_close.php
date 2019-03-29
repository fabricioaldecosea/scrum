<?php
// Parametros para la conexion
@$hostdb = "sql312.epizy.com";//"mysql.hostinger.es"
@$userdb = "epiz_23663526";//"usisiucomuy18"
@$keydb = "2k7rjy9d";//"web1234"
@$database = "epiz_23663526_scrum";//"usisiu"


@$connect_db = mysql_connect($hostdb,$userdb,$keydb);
mysql_close($connect_db);
?>