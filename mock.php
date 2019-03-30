<?php

session_start();

$cq = isset($_GET['cq']) ? $_GET['cq'] : '1';
$cq = (int)$cq;
$user = isset($_SESSION['user']) ? $_SESSION['user'] : '';
$selectedAns = isset($_GET['sa']) ? $_GET['sa'] : '';
if ($user == ''){
     echo "<script>document.location.href='index.php';</script>";
}
$_SESSION['1'] = '0';$_SESSION['2'] = '0';$_SESSION['3'] = '0';$_SESSION['4'] = '0';$_SESSION['5'] = '0';
$_SESSION['6'] = '0';$_SESSION['7'] = '0';$_SESSION['8'] = '0';$_SESSION['9'] = '0';$_SESSION['10'] = '0';
$_SESSION['11'] = '0';$_SESSION['12'] = '0';$_SESSION['13'] = '0';$_SESSION['14'] = '0';$_SESSION['15'] = '0';
$_SESSION['16'] = '0';$_SESSION['17'] = '0';$_SESSION['18'] = '0';$_SESSION['19'] = '0';$_SESSION['20'] = '0';
$_SESSION['21'] = '0';$_SESSION['22'] = '0';$_SESSION['23'] = '0';$_SESSION['24'] = '0';$_SESSION['25'] = '0';
$_SESSION['26'] = '0';$_SESSION['27'] = '0';$_SESSION['28'] = '0';$_SESSION['29'] = '0';$_SESSION['30'] = '0';
$_SESSION['31'] = '0';$_SESSION['32'] = '0';$_SESSION['33'] = '0';$_SESSION['34'] = '0';$_SESSION['35'] = '0';
$_SESSION['36'] = '0';$_SESSION['37'] = '0';$_SESSION['38'] = '0';$_SESSION['39'] = '0';$_SESSION['40'] = '0';
$_SESSION['41'] = '0';$_SESSION['42'] = '0';$_SESSION['43'] = '0';$_SESSION['44'] = '0';$_SESSION['45'] = '0';
$_SESSION['46'] = '0';$_SESSION['47'] = '0';$_SESSION['48'] = '0';$_SESSION['49'] = '0';$_SESSION['50'] = '0';
$_SESSION['51'] = '0';$_SESSION['52'] = '0';$_SESSION['53'] = '0';$_SESSION['54'] = '0';$_SESSION['55'] = '0';
$_SESSION['56'] = '0';$_SESSION['57'] = '0';$_SESSION['58'] = '0';$_SESSION['59'] = '0';$_SESSION['60'] = '0';
$_SESSION['61'] = '0';$_SESSION['62'] = '0';$_SESSION['63'] = '0';$_SESSION['64'] = '0';$_SESSION['65'] = '0';
$_SESSION['66'] = '0';$_SESSION['67'] = '0';$_SESSION['68'] = '0';$_SESSION['69'] = '0';$_SESSION['70'] = '0';
$_SESSION['71'] = '0';$_SESSION['72'] = '0';$_SESSION['73'] = '0';$_SESSION['74'] = '0';$_SESSION['75'] = '0';
$_SESSION['76'] = '0';$_SESSION['77'] = '0';$_SESSION['78'] = '0';$_SESSION['79'] = '0';$_SESSION['80'] = '0';

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
        $questions = mysql_query("SELECT Id , question , total FROM questions WHERE Id = '".$cq."'");
	echo'<body style="background:black;height:110%;opacity:0.95;background-image:  url(\'/img/home.png\');background-attachment: fixed; background-position: center;">
               <a href="logout.php" style="z-index:1;float:right;margin-right:2%;margin-top:1%;"><h3 style="color:blue;">Logout</h3></a>
               <div class="container" style="z-index:-1;margin-top:10%;background:white;">
			<header class="codrops-header" style="">
                            <h4 style="float:left;">Welcome '.$_SESSION['name'].'</h4>
			</header>
			<section class="main" style="margin-top:1%;">
				<form name="form-question-'.$cq.'" id="form-question-'.$cq.'" autocomplete="off" style="margin-left:10%;width:90%;" method="post">
				   ';
                                    $idQ = 0;
                                    $totalPointsQ = 0;
                                    while ($currentQ = mysql_fetch_row($questions)) {
                                        $idQ = $currentQ[0];
                                        echo "<br><div style='color:black;'><h3>".$idQ.") ".utf8_encode($currentQ[1])."</h3></div><br><br>";
                                        $totalPointsQ = $currentQ[2];
                                        $answers = mysql_query("SELECT Id , Id_Question, answer , code FROM answers WHERE Id_Question = '".$idQ."'");
                                        //$listOfCorrectAnswers = split(',',$selectedAns);
                                        //$cint = 0;
                                        while ($currentA = mysql_fetch_row($answers)){
                                            //$currentChecked = contains((string)$cint,$listOfCorrectAnswers);
                                            $weightAns = $currentA[3];
                                            $answer = $currentA[2];
                                            if($totalPointsQ == 1) {
                                               echo "<h4><input style='cursor:pointer;' type='radio'   name='".$idQ."' value='".$weightAns."'> ".utf8_encode($answer)."</input></h4><br>";
                                            } else {
                                               echo "<h4><input style='cursor:pointer' type='checkbox'  value='".$weightAns."'> ".utf8_encode($answer)."</input></h4><br>";
                                            }
                                            $cint++;
                                        }
                                    }
                                   
                                   echo '
				</form>';
                                
                                $nextCQ = $cq + 1;
                                $backCQ = $cq - 1;
                                if ($cq > 1) {
                                    echo '<input type="button" style="cursor:pointer;float:left" onclick="validateCQ('.$cq.','.$totalPointsQ.','.$backCQ.');" value="Back"></input>';
                                }
                                if ($cq == 80){
                                    echo '<input type="button" style="cursor:pointer;float:center" onclick="submitExamn();" value="Submit Exam"></input>';
                                }
                                if ($cq < $_SESSION['totalQ']) {
                                    echo '<input type="button" style="cursor:pointer;float:right" onclick="validateCQ('.$cq.','.$totalPointsQ.','.$nextCQ.');" value="Next"></input>';
                                }
                                echo'
                                <script>
                                    function submitExamn() {
                                        var qac = "";
                                        for (i = 1; i <= 80 ; i++) { 
                                            if (qac = "") {
                                                qac = i.toString() + "-" + sessionStorage.getItem(i.toString());
                                            } else {
                                                qac = qac + "," + i.toString() + "-" + sessionStorage.getItem(i.toString());
                                            }
                                        }
                                        var qans = "";
                                        var leftAnyAns = false;
                                        for (i = 1; i<= 80 ; i++) {
                                            var currentAns = sessionStorage.getItem("answers-"+i.toString());
                                            if (currentAns = "") { 
                                                leftAnyAns = true;
                                                break;
                                            }
                                            if (qans = "") {
                                                qans = i.toString() + "-" + currentAns);
                                            } else {
                                                qans = qans + "," + i.toString() + "-" + currentAns);
                                            }
                                        }
                                        if(leftAnyAns){
                                            var ca = confirm("You have unanswered questions, you are sure you want to continue to see the results");
                                            if (ca) {
                                                document.location.href=\'submitResults.php?qac=\'+qac+\'&qans=\'+qans+\'\';
                                            }
                                        } else {
                                            document.location.href=\'submitResults.php?qac=\'+qac+\'&qans=\'+qans+\'\';
                                        }
                                    }
                                    
                                    function validateCQ(currentQuestion, requiredPoints, nextQ){
                                        var nameForm = "form-question-"+currentQuestion.toString();
                                        var form = document.getElementById(nameForm);
                                        var allInputs = form.getElementsByTagName("input");
                                        var currentTotalPoints = 0;
                                        var sa = "";
                                        for (i=0; i < allInputs.length ; i++){
                                            var currentInput = allInputs[i];
                                            if(currentInput.checked){
                                                if(sa == "") {
                                                    sa = i.toString();
                                                } else { 
                                                    sa = sa + "," + i.toString();
                                                }
                                                currentTotalPoints += currentInput.value;
                                            }
                                        }
                                        sessionStorage.setItem("answers-"+currentQuestion.toString(), sa);
                                        var correctAnswer = requiredPoints == currentTotalPoints;
                                        sessionStorage.setItem(currentQuestion.toString(), correctAnswer.toString());
                                        var nextAnswers = sessionStorage.getItem("answers-"+nextQ.toString());
                                        if(nextAnswers !== null) {
                                            document.location.href=\'mock.php?cq=\'+nextQ+\'&sa=\'+nextAnswers+\'\';
                                        } else {
                                            document.location.href=\'mock.php?cq=\'+nextQ+\'\';
                                        }
                                    }
                                </script> '; 
                        echo' </section>
			
		</div>
		
	</body>
</html>

';















?>