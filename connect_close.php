<?php
// Parametros para la conexion
@$hostdb = "localhost";//"mysql.hostinger.es"
@$userdb = "root";//"usisiucomuy18"
@$keydb = "";//"web1234"
@$database = "epiz_23663526_scrum";//"usisiu"


@$connect_db = mysql_connect($hostdb,$userdb,$keydb);
mysql_close($connect_db);
?>