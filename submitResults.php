<?php

session_start();


$user = isset($_SESSION['user']) ? $_SESSION['user'] : '';
$qac = isset($_GET['qac']) ? $_GET['qac'] : '';
$qans = isset($_GET['qans']) ? $_GET['qans'] : '';
if ($user == '' && $qac != '' && $qans != ''){
     echo "<script>document.location.href='index.php';</script>";
}

echo '
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
                <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
                <title>Professional Scrum Master I</title>
                <meta name="description" content="Professional Scrum Master I" />
                <meta name="keywords" content="Professional Scrum Master I" />
                <meta name="author" content="PSM1" />
                <link rel="shortcut icon" href="../favicon.ico"> 
                <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>	
			@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
			body {
				background: #7f9b4e url(images/bg2.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
		</style>
        </head>
        <style>
          .speech {border: 1px solid #DDD; width: 300px; padding: 0; margin: 0}
          .speech input {border: 0; width: 240px; display: inline-block; height: 30px;}
          .speech img {float: right; width: 40px }
        </style>
        ';
        include("connect_open.php");
        //$questions = mysql_query("SELECT Id , question , total FROM questions WHERE Id = '".$cq."'");
        
        
	echo'<body style="background:black;height:110%;opacity:0.95;background-image:  url(\'/img/home.png\');background-attachment: fixed; background-position: center;">
               <a href="logout.php" style="z-index:1;float:right;margin-right:2%;margin-top:1%;"><h3 style="color:blue;">Logout</h3></a>
               <div class="container" style="z-index:-1;margin-top:10%;background:white;">
			<header class="codrops-header" style="">
                            <h4 style="float:left;">Welcome '.$_SESSION['name'].'</h4>
			</header>
			<section class="main" style="margin-top:1%;">
				  ';
                                  
                                  $listOfCorrections = explode(',',$qac);
                                  $amountOfQuestions = $_SESSION['totalQ'];
                                  $amountOfCorrectQuestions = 0;
                                  foreach ($listOfCorrections as $eachQuestionWithAnswerResult) {
                                      $questionWithAnswerArray = explode('-',$eachQuestionWithAnswerResult);
                                      if ($questionWithAnswerArray[1] == 'true') {
                                          $amountOfCorrectQuestions += 1;
                                      }
                                      $amountOfQuestions +=1;
                                  }
                                  $percentage = ($amountOfCorrectQuestions / $_SESSION['totalQ']) * 100;
                                  $percentageToShow = round($percentage,2);
                                  $percentageToCheck = round($percentage,0);
                                  echo "<br>";
                                  if ($percentageToCheck > 85){
                                        echo '<h4 style="Color:green">Congratulations you pass your PSM1 exam simulator. Your score was '.$percentageToShow."%</h4>";
                                  } else {
                                        echo '<h4 style="Color:red">You didnt pass your PSM1 exam simulator. Your score was '.$percentageToShow."%</h4>";
                                  } 
                                  echo '<br><br><input type="button" style="cursor:pointer;" onclick="checkQuestions();" value="Check Questions"></input>';
                                  echo '<input type="button" style="cursor:pointer;margin-left:4%;" onclick="backToMock();" value="Back To Mock (Try Again)"></input><br><br>';
                                echo'
                               
                        </section>
                        
                        <script>
                                    function backToMock() {
                                       localStorage.clear();
                                        //---------------------------------------------------------//
                                       document.location.href=\'mock.php?cq=1\';
                                          
                                    }
                                    
                                    function checkQuestions() {
                                       
                                        //---------------------------------------------------------//
                                        document.location.href=\'checkResults.php?qac=\'+"'.$qac.'"+\'&qans=\'+"'.$qans.'"+\'\';
                                        //---------------------------------------------------------//
                                    }
                                </script> 
			
		</div>
		
	</body>
</html>

';















?>