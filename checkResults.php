<?php

session_start();

$cq = isset($_GET['cq']) ? $_GET['cq'] : '1';
$cq = (int)$cq;
$user = isset($_SESSION['user']) ? $_SESSION['user'] : '';
$selectedAns = isset($_GET['sa']) ? $_GET['sa'] : '';

$qac = isset($_GET['qac']) ? $_GET['qac'] : '';
$qans = isset($_GET['qans']) ? $_GET['qans'] : '';

if ($user == '' && $qac != '' && $qans != ''){
     echo "<script>document.location.href='index.php';</script>";
}

echo '
<!DOCTYPE html>
<html lang="en" style="background:white;opacity:0.95;background-image:  url(\'/img/home.png\');background-attachment: fixed; height:100%;width:100%;repeat-y" class="no-js">
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
        $questions = mysql_query("SELECT Id , question , total FROM questions");
	echo'<body style="background:none;height:100%;opacity:0.95;">
                   <a href="logout.php" style="z-index:1;float:right;margin-right:2%;margin-top:1%;"><h3 style="color:blue;">Logout</h3></a>
                   <div class="container" style="height:100%;z-index:-1;margin-top:5%;">
                            <header class="codrops-header" style="">
                                <h4 style="float:left;">Welcome '.$_SESSION['name'].'</h4>
                            </header>
                            <section class="main" style="margin-top:1%;">
                                    <form name="form-question-'.$cq.'" id="form-question-'.$cq.'" autocomplete="off" style="margin-bottom:5%;margin-left:-4%;padding-left:2%;padding-right:2%;width:110%;" method="post">
                                       ';
                                        echo '<br><input type="button" style="cursor:pointer;" onclick="backToMock();" value="Back To Mock (Try Again)"></input><br><br>';
                                        $idQ = 0;
                                        $totalPointsQ = 0;
                                        $listOfQAns = explode("--",$qans); // 12-0,1,2
                                        $dictionatyQA = [];
                                        foreach ($listOfQAns as $currentQuestionAnswers) {
                                            $questionAnswersArray = explode("-",$currentQuestionAnswers);
                                            $dictionatyQA[$questionAnswersArray[0]] = $questionAnswersArray[1];
                                        }
                                        $listOfQC = explode(",",$qac); // 12-0,1,2
                                        $dictionatyQC = [];
                                        foreach ($listOfQC as $currentQuestionCorrection) {
                                            $questionCorrectionArray = explode("-",$currentQuestionCorrection);
                                            $dictionatyQC[$questionCorrectionArray[0]] = ($questionCorrectionArray[1] == 'true') ? 'Correct' : 'Incorrect';
                                        }
                                        while ($currentQ = mysql_fetch_row($questions)) {
                                            echo '<div style="width:100%;height:100%;background:white;opacity:0.95;">';
                                            $idQ = $currentQ[0];
                                            echo "<br><div style='color:black;'><h3>"."&nbsp; (".$dictionatyQC[$idQ].") ".$idQ.") ".utf8_encode($currentQ[1])."</h3></div>";
                                            $totalPointsQ = $currentQ[2];
                                            $answers = mysql_query("SELECT Id , Id_Question, answer , code FROM answers WHERE Id_Question = '".$idQ."'");
                                            
                                            $selectedAns = array_key_exists($idQ,$dictionatyQA) ? $dictionatyQA[$idQ] : '';
                                            $listOfSelAnswers = ($selectedAns != '') ? explode(",",$selectedAns) : '';
                                            $cint = 0;
                                            while ($currentA = mysql_fetch_row($answers)){
                                                $currentChecked = ($listOfSelAnswers != '') ? (in_array($cint, $listOfSelAnswers)) : false;
                                                $weightAns = $currentA[3];
                                                $answer = $currentA[2];
                                                if($totalPointsQ == 1) {
                                                   if($currentChecked){
                                                        if ($weightAns != '1'){
                                                            echo "&nbsp;<h4 style='background:red;'><input style='margin-left:1%;cursor:pointer;' type='radio' name='".$idQ."' checked value='".$weightAns."'> &nbsp;".utf8_encode($answer)."</input></h4>";
                                                        } else {
                                                            echo "&nbsp;<h4 style='background:green;'><input style='margin-left:1%;background:green;cursor:pointer;' type='radio' name='".$idQ."' checked value='".$weightAns."'> &nbsp;".utf8_encode($answer)."</input></h4>";
                                                        }
                                                   } else { 
                                                       echo "&nbsp;<h4 ><input style='cursor:pointer;margin-left:1%;' type='radio' name='".$idQ."' value='".$weightAns."'> &nbsp;".utf8_encode($answer)."</input></h4>";
                                                   }
                                                } else {
                                                   if($currentChecked){
                                                       if ($weightAns != '1'){
                                                            echo "&nbsp;<h4 style='background:red;'><input style='background:red;cursor:pointer;margin-left:1%;' type='checkbox' checked value='".$weightAns."'> &nbsp;".utf8_encode($answer)."</input></h4>";
                                                       } else {
                                                           echo "&nbsp;<h4 style='background:green;'><input style='background:green;cursor:pointer;margin-left:1%;' type='checkbox' checked value='".$weightAns."'> &nbsp;".utf8_encode($answer)."</input></h4>";
                                                       }
                                                   } else { 
                                                       echo "&nbsp;<h4 ><input style='cursor:pointer;margin-left:1%;' type='checkbox' value='".$weightAns."'> &nbsp;".utf8_encode($answer)."</input></h4>";
                                                   }
                                                   
                                                }
                                                $cint++;
                                            }
                                            
                                             
                                            
                                            echo'</div>';
                                        }
                                       echo '<br><input type="button" style="cursor:pointer;" onclick="backToMock();" value="Back To Mock (Try Again)"></input><br><br>';
                                       echo '
                                    </form>';
                                    
                                    
                                    echo'
                                    <script>
                                        function backToMock() {
                                           localStorage.clear();
                                            //---------------------------------------------------------//
                                           document.location.href=\'mock.php?cq=1\';
                                              
                                        }
                                    </script> '; 
                            echo' </section>
                            
                    </div>
	</body>
</html>

';















?>