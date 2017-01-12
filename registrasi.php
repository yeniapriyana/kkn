<?PHP 
require_once"koneksi.php";
if(!empty($_SESSION['member'])) { 
header ('location:./registrasi.php');
} 
else{

 echo'
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

</head>';

echo'
<body>
	
	<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			
			<a class="brand" style="font-style:verdana; font-size:30px;"><img src="tampilan/unila.png" width="60"> Sistem Data dan Informasi KKN Universitas Lampung			
			</a>	
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
          <li class="dropdown"><a href="index.php""><h3>Login </i> </h3></a>
            </ul>
          </li>
					
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div>';
require_once"include/registrasi-proses.php";
echo'
<h1>Registrasi Peserta KKN</h1>
</div> 
            <!-- /widget-header -->
            <div class="widget-content">
            	<form class="row-border" name="form1"  action="" method="post">
            			<h3>A. Data Pribadi</h3>
            				<div class="registerbox">
                            	<fieldset>
                                <div class="form-group">
                                    <label class="control-label"><h4>NPM :</h4></label>
                                    <div class="required">
                                        <input name="npm" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                	<label class="control-label"><h4>Nama : </h4></label>
                                    <div class="required"> 
                                    	<input name="nama" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label"><h4>Jenis Kelamin :</h4></label>
                                    <div class="required">
                                     <label class="radio">
                                       <input checked="checked" value="pria" id="jenis_kelamin" name="jenis_kelamin" type="radio">
                                       Pria </label><label class="radio">
                                       <input value="wanita" id="jenis_kelamin" name="jenis_kelamin" type="radio">
                                       Wanita </label> 
                                    </div>
             				 	</div>
								<div class="form-group">
                                	<label class="control-label"><h4>Fakultas :</h4></label>
                                    <div class="required">
                              		<input name="fakultas"type="text">
              						</div>
                                </div>
								<div class="form-group">
                                  	<label class="control-label"><h4>Jurusan :</h4></label>
                                    <div class="required">
                              		<input name="jurusan"type="text">
              						</div>
                                </div>
								<div class="form-group">
                                  	<label class="control-label"><h4>Total SKS :</h4></label>
                                    <div class="required">
                              		<input name="total_sks" type="text">
              						</div>
                                </div>
								<div class="form-group">
                                  <label class="control-label"><h4>IPK :</h4></label>
                                    <div class="required">
                              		<input  name="ipk"type="text">
              						</div>
                                </div>
								<div class="form-group">
                                  <label class="control-label"><h4>Tempat Lahir :</h4></label>
                                    <div class="required">
                              		<input  name="tempat_lahir" type="text">
              						</div>
                                </div>
                                <div class="form-group">
                                  <label class="control-label"><h4>Tanggal Lahir (tahun-bulan-tanggal) xxxx-yy-zz :</h4></label>
                                    <div class="required">
                              		<input name="tanggal_lahir" type="text")">
              						</div>
                                </div>
								<div class="form-group">
                                  <label class="control-label"><h4>Alamat :</h4></label>
                                  <div class="required">
                              		<textarea name="alamat" type="text"></textarea>
              						</div>
								<div class="form-group">
                                <label class="control-label"><h4>Nomor Telepon/Handphone :</h4></label>
                                    <div class="required">
                              		<input name="nomor_telepon" type="text">
              						</div>
                                </div>
                                <div class="form-group">
                                <label class="control-label"><h4>Ukuran Pakaian :</h4></label>
                                    <div class="required">
                              		<input name="ukuran_pakaian"  type="text">
              						</div>
              			<h3>A. Data Login</h3>
            				<div class="registerbox">
                            	<fieldset>
                                </div>
                                <div class="form-group">
                                <label class="control-label"><h4>Username *</h4></label>
                                    <div class="required">
                              		<input name="username"  type="text">
              						</div>
                                </div>
                                <div class="form-group">
                                <label class="control-label"><h4>Password *</h4></label>
                                    <div class="required">
                              		<input name="password"  type="password">
              						</div>
                                </div>

<div class="form-actions">
<button class="btn  btn-warning" type="reset">Reset</button>
<button class="btn btn-primary" name="registrasi" type="submit">Registrasi</button>
</div>
</form>
</div></div>

</div></div>

</body>
</html>';}
