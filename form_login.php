<?php
session_start();
//error_reporting(E_ALL); ini_set('display_errors', 'On');
header('Content-Type: text/html; charset=UTF-8');

$password = isset($_POST['password']) ? $_POST['password'] : null;
$username = isset($_POST['login']) ? $_POST['login'] : null;


include("connect_open.php");
$password = sha1($password);
$queryUser = mysql_query("SELECT Id , user , pass , name FROM users WHERE user = '".$username."' AND pass = '".$password."'");

$wrongUs = 0 == mysql_num_rows($queryUser);
while ($row = mysql_fetch_row($queryUser)){
	$iduser = $row[0];
        $user = $row[1];
        $pass = $row[2];
	$name = $row[3];
	$_SESSION['user'] = isset($user) ? $user : "";
        $_SESSION['name'] = isset($name) ? $name : "";
	$_SESSION['id'] = $iduser;
        
        $queryNumberOfQuestions = mysql_query("SELECT Id FROM questions");
        $_SESSION['totalQ'] = mysql_num_rows($queryNumberOfQuestions);
        
	echo "<script>document.location.href='mock.php?cq=1';</script>";
}

if(wrongUs){
    echo "<script>document.location.href='index.php';</script>";
}
include("connect_close.php");
?>