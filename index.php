<?php
session_start();

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
         

	<body style="background:black;opacity:0.7;background-image:  url(\'/img/home.png\');background-attachment: fixed; background-position: center;">
		<div class="container" style="">
			<header class="codrops-header" style="">
			</header>
			<section class="main" style="margin-top:14%;">
				<form class="form-4" autocomplete="off" action="form_login.php" method="post">
				    <h1 style="color:black">Login</h1>
				    <p>
				        <label for="login">Username or email</label>
				        <input autocomplete="off" type="text" name="login" placeholder="Username or email" required>
				    </p>
				    <p>
				        <label for="password">Password</label>
				        <input autocomplete="off" type="password" name=\'password\' placeholder="Password" required> 
				    </p>

				    <p>
				        <input type="submit" name="submit" value="Continue">
				    </p>       
				</form>
                         </section>
			
		</div><!-- /container -->
		
	</body>
</html>

';















?>