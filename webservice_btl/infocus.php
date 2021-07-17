<?php
include "connect.php";
$tenkhachhang =$_POST['tenkhachhang'];
$sodienthoai=$_POST['sodienthoai'];
$email = $_POST['email'];
//$tenkhachhang = "abc";
//$sodienthoai ="02344";
//$emai = "fghjj";
if (strlen($tenkhachhang)>0 && strlen($email)>0 && strlen($sodienthoai)>0){
    $query = "INSERT INTO khachhang(id,tenkhachhang,sdt,email) VALUES (null,'$tenkhachhang','$sodienthoai','$email')";
    if (mysqli_query($conn,$query)){
        $idkhachhang = $conn->insert_id;
        echo $idkhachhang;
    }else{
        echo"that bai";
    }
}
else{
    echo"kiem tra lai";
}
?>