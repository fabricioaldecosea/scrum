<?php

session_start();

$cq = isset($_GET['cq']) ? $_GET['cq'] : '1';
$cq = (int)$cq;
$user = isset($_SESSION['user']) ? $_SESSION['user'] : '';
$selectedAns = isset($_GET['sa']) ? $_GET['sa'] : '';
if ($user == ''){
     echo "<script>document.location.href='index.php';</script>";
}

echo '
<!DOCTYPE html>
<html lang="en" style="z-index:-2;background:white;opacity:0.9;" class="no-js">
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
	echo'<body style="background:black;height:100%;opacity:0.95;background-image:  url(\'/img/home.png\');background-attachment: fixed; background-position: center;">
               <a href="logout.php" style="z-index:1;float:right;margin-right:2%;margin-top:1%;"><h3 style="color:blue;">Logout</h3></a>
           
                <div class="container" style="height:100%;z-index:-1;opacity:0.8;padding-top:8%;background:white;">
			<header class="codrops-header" style="">
                            <h4 style="float:left;">Welcome '.$_SESSION['name'].'</h4>
			</header>
			<section class="main" style="margin-top:1%;">
				<form name="form-question-'.$cq.'" id="form-question-'.$cq.'" autocomplete="off" style="margin-left:20%;width:110%;" method="post">
				   ';
                                    $idQ = 0;
                                    $totalPointsQ = 0;
                                    while ($currentQ = mysql_fetch_row($questions)) {
                                        $idQ = $currentQ[0];
                                        echo "<br><div style='color:black;'><h3>".$idQ.") ".utf8_encode($currentQ[1])."</h3></div><br><br>";
                                        $totalPointsQ = $currentQ[2];
                                        $answers = mysql_query("SELECT Id , Id_Question, answer , code FROM answers WHERE Id_Question = '".$idQ."'");
                                
                                        $listOfCorrectAnswers = ($selectedAns != '') ? explode(",",$selectedAns) : '';
                                        $cint = 0;
                                        while ($currentA = mysql_fetch_row($answers)){
                                            
                                            $currentChecked = ($listOfCorrectAnswers != '') ? (in_array($cint, $listOfCorrectAnswers)) : false;
                                            $weightAns = $currentA[3];
                                            $answer = $currentA[2];
                                            if($totalPointsQ == 1) {
                                               if($currentChecked){
                                                   echo "<h4><input style='cursor:pointer;' type='radio' name='".$idQ."' checked value='".$weightAns."'> ".utf8_encode($answer)."</input></h4><br>";
                                               } else { 
                                                   echo "<h4><input style='cursor:pointer;' type='radio' name='".$idQ."' value='".$weightAns."'> ".utf8_encode($answer)."</input></h4><br>";
                                               }
                                            } else {
                                               if($currentChecked){
                                                   echo "<h4><input style='cursor:pointer' type='checkbox' checked value='".$weightAns."'> ".utf8_encode($answer)."</input></h4><br>";
                                               } else { 
                                                   echo "<h4><input style='cursor:pointer' type='checkbox' value='".$weightAns."'> ".utf8_encode($answer)."</input></h4><br>";
                                               }
                                               
                                            }
                                            $cint++;
                                        }
                                    }
                                   
                                   echo '
				</form>';
                                
                                $nextCQ = $cq + 1;
                                $backCQ = $cq - 1;
                                $total = $_SESSION['totalQ'];
                                if ($cq > 1) {
                                    echo '<input type="button" style="margin-left:20%;cursor:pointer;float:left" onclick="validateCQ('.$cq.','.$totalPointsQ.','.$backCQ.');" value="Back"></input>';
                                }
                                if ($cq == $total){
                                    echo '<input type="button" style="margin-left:20%;cursor:pointer;margin-left:2%;float:left" onclick="submitExamn('.$cq.','.$totalPointsQ.');" value="Submit Exam"></input>';
                                }
                                if ($cq < $total) {
                                    if($cq > 1){
                                        echo '<input type="button" style="margin-left:20%;cursor:pointer;margin-left:2%;float:left" onclick="validateCQ('.$cq.','.$totalPointsQ.','.$nextCQ.');" value="Next"></input>';
                                    } else {
                                        echo '<input type="button" style="margin-left:20%;cursor:pointer;float:left" onclick="validateCQ('.$cq.','.$totalPointsQ.','.$nextCQ.');" value="Next"></input>';
                                    }
                                }
                                
                                echo'
                                <script>
                                    function submitExamn(currentQuestion, requiredPoints) {
                                        //---------------------------------------------------------//
                                        var nameForm = "form-question-"+currentQuestion.toString();
                                        var form = document.getElementById(nameForm);
                                        var allInputs = form.getElementsByTagName("input");
                                        var currentTotalPoints = 0;
                                        var sa = "";
                                        //---------------------------------------------------------//
                                        for (i=0; i < allInputs.length ; i++){
                                            var currentInput = allInputs[i];
                                            if(currentInput.checked){
                                                if(sa == ""){
                                                    sa = i.toString();
                                                } else { 
                                                    sa = sa + "," + i.toString();
                                                }
                                                if (currentInput.value == "-1"){
                                                    currentTotalPoints -= 1;
                                                } else {
                                                    currentTotalPoints += 1;
                                                }
                                            }
                                        }
                                        //---------------------------------------------------------//
                                        localStorage.setItem("answers-"+currentQuestion.toString(), sa);
                                        //---------------------------------------------------------//
                                        var correctAnswer = requiredPoints == currentTotalPoints;
                                        //---------------------------------------------------------//
                                        localStorage.setItem(currentQuestion.toString(), correctAnswer.toString());
                                        //---------------------------------------------------------//
                                        var qac = "";
                                        for (i = 1; i <= '.$total.' ; i++) { 
                                            var currentQAC = localStorage.getItem(i.toString());
                                            if(currentQAC != null && currentQAC != ""){
                                                if (qac == "") {
                                                    qac = i.toString() + "-" + currentQAC;
                                                } else {
                                                    qac = qac + "," + i.toString() + "-" + currentQAC;
                                                }
                                            }
                                        }
                                        //---------------------------------------------------------//
                                        var qans = "";
                                        var leftAnyAns = false;
                                        for (i = 1; i <= '.$total.' ; i++) {
                                            var currentAns = localStorage.getItem("answers-"+i.toString());
                                            //console.log("currentAns "+i+": "+ currentAns);
                                            if (currentAns ==  null || currentAns == "") { 
                                                leftAnyAns = true;
                                            }
                                            if (currentAns != null) {
                                                if (qans == "") {
                                                    qans = i.toString() + "-" + currentAns;
                                                } else {
                                                    qans = qans + "--" + i.toString() + "-" + currentAns;
                                                }
                                            }
                                        }
                                        //---------------------------------------------------------//
                                        if(leftAnyAns){
                                            var ca = confirm("You have unanswered questions, you are sure you want to continue to see the results");
                                            if (ca) {
                                                document.location.href=\'submitResults.php?qac=\'+qac+\'&qans=\'+qans+\'\';
                                            }
                                        } else {
                                            document.location.href=\'submitResults.php?qac=\'+qac+\'&qans=\'+qans+\'\';
                                        }
                                        //---------------------------------------------------------//
                                    }
                                    
                                    function validateCQ(currentQuestion, requiredPoints, nextQ){
                                        //---------------------------------------------------------//
                                        var nameForm = "form-question-"+currentQuestion.toString();
                                        var form = document.getElementById(nameForm);
                                        var allInputs = form.getElementsByTagName("input");
                                        var currentTotalPoints = 0;
                                        var sa = "";
                                        //---------------------------------------------------------//
                                        for (i=0; i < allInputs.length ; i++){
                                            var currentInput = allInputs[i];
                                            if(currentInput.checked){
                                                if(sa == "") {
                                                    sa = i.toString();
                                                } else { 
                                                    sa = sa + "," + i.toString();
                                                }
                                                if (currentInput.value == "-1"){
                                                    currentTotalPoints -= 1;
                                                } else {
                                                    currentTotalPoints += 1;
                                                }
                                            }
                                        }
                                        //---------------------------------------------------------//
                                        if(sa != ""){
                                            localStorage.setItem("answers-"+currentQuestion.toString(), sa);
                                        
                                            //---------------------------------------------------------//
                                            var correctAnswer = requiredPoints == currentTotalPoints;
                                            //---------------------------------------------------------//
                                            localStorage.setItem(currentQuestion.toString(), correctAnswer.toString());
                                        }
                                        //---------------------------------------------------------//
                                        var nextAnswers = localStorage.getItem("answers-"+nextQ.toString());
                                        //---------------------------------------------------------//
                                        if(nextAnswers != null && nextAnswers != "") {
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