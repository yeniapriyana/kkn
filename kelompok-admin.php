<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Sistem Informasi KKN Universitas Lampung</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="tampilan/bootstrap.css" rel="stylesheet">
<link href="tampilan/bootstrap-responsive.css" rel="stylesheet">
<link href="tampilan/css.css" rel="stylesheet">
<link href="tampilan/font-awesome.css" rel="stylesheet">
<link href="tampilan/style.css" rel="stylesheet">
<link href="tampilan/dashboard.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" style="font-style:italic; font-size:25px;"><img src="tampilan/unila.png" width="60"> Sistem Data dan Informasi KKN Universitas Lampung       
      </a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><h3><img src="tampilan/user.jpg" width="30">User </i> <b class="caret"></b></h3></a>
            <ul class="dropdown-menu">
              <li><a href="logout.php">Log Out</a></li>
            </ul>
          </li>
        </ul>
     </div>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li><a href="home-admin.php"><img src="tampilan/home.jpg" width="30"><span>Beranda</span> </a> </li>
        <li class="active"><a href="kelompok-admin.php"><img src="tampilan/kelompok.jpg" width="30"><span>Info Kelompok </span> </a></li>
        <li><a href="desapembimbing-admin.php"><img src="tampilan/map.jpg" width="30"><span>Info Desa dan Pembimbing</span> </a></li>
        <li><a href="pengumuman-admin.php"><img src="tampilan/pengumuman.jpg" width="30"><span>Pengumuman dari DPL</span> </a> </li>
         <li ><a href="daftar-user.php"><img src="tampilan/kelompok.jpg" width="30"><span>Daftar User</span> </a> </li>
       <!-- <li><a href="laporan.php"><i class="icon-list-alt"></i><span>Laporan</span> </a> </li>-->
 </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<!-- /subnavbar -->
<?php 
include "koneksi.php";
?>
<style>
    
table[border="1"] {
border-collapse:collapse;
font:normal 12px Verdana,Arial,Sans-Serif;
color:#333;
}
table[border="1"] tr {
background:#F0F0F0;
}
table[border="1"] th, table[border="1"] td {
vertical-align:top;
padding:5px 10px;
border:2px solid #fff;
}
table[border="1"] td:nth-child(odd) {
background:#DEDEDE;
}
table[border="1"] th {
background:#8B7BFF;
border-radius: 10px 10px 0px 0px; 
-moz-border-radius: 10px 10px 0px 0px; 
-webkit-border-radius: 10px 10px 0px 0px;
color:#fff;
font-weight:bold;
}
</style>
<center>
<h1>Daftar Peserta KKN</h1>
<br>
<br>

  <table border="1">
    <thead>
      <tr>
        <th>NPM</th>
        <th>NAMA</th>
        <th>JENIS KELAMIN</th>
        <th>FAKULTAS</th>
        <th>JURUSAN</th>
    </tr>   
  </thead>
  <tbody>
    <?php 
$host = "localhost";
$user_name = "root";
$password = "";
$database = "login";
 
$koneksi = mysql_connect($host, $user_name, $password);
$pilihdatabase = mysql_select_db($database, $koneksi); 
       
$select = "SELECT * from user";
$select_query = mysql_query($select);
while($select_result = mysql_fetch_array($select_query))
        {
        $npm = $select_result['npm'] ;
        $nama = $select_result['nama'] ;
        $jenis_kelamin = $select_result['jenis_kelamin'] ;
        $fakultas = $select_result['fakultas'] ;
        $jurusan = $select_result['jurusan'] ;
        echo "
                                                       
        <tr><td>$npm</td><td>$nama</td><td>$jenis_kelamin</td><td>$fakultas</td><td>$jurusan</td></tr>
        
        ";
        }
        ?>
  </table>
  <br/>
    
    <div>  
        <br>  
            
      
          
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
<!-- /main -->


<!-- /main -->

<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> © 2017 <a href="http://www.unila.ac.id/">Universitas Lampung</a>. </div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="tampilan/jquery-1.js"></script> 
<script src="tampilan/excanvas.js"></script> 
<script src="tampilan/chart.js" type="text/javascript"></script> 
<script src="tampilan/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="tampilan/fullcalendar.htm"></script>
 
<script src="tampilan/base.js"></script> 


</body></html>