<?php
   session_start();
   if(isset($_SESSION['npm'])) {
   header('location:index.php'); }
   require_once("koneksi.php");
?>

<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Sistem Data dan Informasi KKN Universitas Lampung</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="tampilan/bootstrap.css" rel="stylesheet" type="text/css">
<link href="tampilan/bootstrap-responsive.css" rel="stylesheet" type="text/css">

<link href="tampilan/font-awesome.css" rel="stylesheet">
    <link href="tampilan/css.css" rel="stylesheet">
    
<link href="tampilan/style.css" rel="stylesheet" type="text/css">
<link href="tampilan/signin.css" rel="stylesheet" type="text/css">

</head>

<body>
	
	<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			
			<a class="brand" href="http://kkn.unila.ac.id/sistemkkn3/login.php" style="font-style:verdana; font-size:30px;"><img src="tampilan/unila.png" width="60"> Sistem Data dan Informasi KKN Universitas Lampung			
			</a>	
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
          <li class="dropdown"><a href="signup.php""><h3><img src="tampilan/signup.jpg" width="30"> SignUp </i> </h3></a>
            </ul>
          </li>
					
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div class="account-container">
	<div class="content clearfix">
		
		<form method="post" name="login" action="cek_login.php">
		
			<h1>Silahkan Log In</h1>		
			
			<div class="login-fields">
				
				<div class="field">
					<label for="username">Username</label>
					<input type="text" name="username">
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input name="token" type="password">
				</div> <!-- /password -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<button class="button btn btn-success btn-large">Login</button>
				
			</div> <!-- .actions -->
			
			
			
		</form>
		
	</div> <!-- /content -->
</div>	



<script src="tampilan/jquery-1.js"></script>
<script src="tampilan/bootstrap.js"></script>

<script src="tampilan/signin.js"></script>




</body></html>