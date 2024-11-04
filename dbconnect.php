<?php
    $servername='127.0.0.1';
    $username='root';
    $password='';
    $dbname='alumini_portal';
    $con=mysqli_connect($servername,$username,$password,$dbname);
    if(!$con){
        die('Could not Connect to MySql');
    }
    return $con;
?>