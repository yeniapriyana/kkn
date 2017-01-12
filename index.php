<?PHP
if(!empty($_SESSION['member_id'])) { 
header ('location:./home.php');
} ?>

<!DOCTYPE html>
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
			
			
			<a class="brand" style="font-style:verdana; font-size:30px;"><img src="tampilan/unila.png" width="60"> Sistem Data dan Informasi KKN Universitas Lampung			
			</a>	
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
          <li class="dropdown"><a href="login-admin.php""><h3><img src="tampilan/signup.jpg" width="20"> Log In ADMIN </i> </h3></a>
            </ul>
          </li>
					
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div class="account-container">
	<div class="content clearfix">
		
<form action="include/login-proses.php" method="post">

<div class="form-group">
<div class="field">
<h1 align="center">Silahkan Log In</h1><hr/>

<label>Username <span class="required">*</span></label>
<input name="username" type="text" class="required form-control" required>
</div>

<div class="form-group">
<label>Password <span class="required">*</span></label>
<input name="password" type="password" class="form-control" required>
</div>

<div class="form-actions">
<div ></div>
<button class="button btn btn-success btn-large" name="login" type="submit">Login</button>
<button href="registrasi.php" class="button btn btn-info btn-large" name="login" type="submit">Sign Up</button>
</div>
</div>
</form>
		</div> 

</div>	



<script src="tampilan/jquery-1.js"></script>
<script src="tampilan/bootstrap.js"></script>

<script src="tampilan/signin.js"></script>




</body></html>