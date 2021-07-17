<?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "webservice_btl";
    $conn = mysqli_connect($host,$username,$password,$database);
    mysqli_query($conn,"SET NAMES '.utf8.'");
    
?>