<?php
    $server = "localhost";
    $usernameDatabase = "root";
    $passwordDatabase = "";
    $databaseName = "login";

    $mysqli = mysqli_connect($server,$usernameDatabase,$passwordDatabase,$databaseName) or die("Koneksi gagal");

    //mysqli_select_db() digunakan untuk mengganti $databaseName dari $con
    //mysqli_select_db($con,$databaseName) or die("Database tidak bisa dibuka");
?>