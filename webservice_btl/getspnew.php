<?php
    include "connect.php";
    $arrayspnew = array();
    $query = "SELECT * FROM sanpham ORDER BY ID DESC LIMIT 6";
    $data = mysqli_query($conn,$query);
    while ($row = mysqli_fetch_assoc($data)){
        array_push($arrayspnew, new Sanphammoinhat(
            $row['id'],
            $row['tensanpham'],
            $row['giasanpham'],
            $row['hinhsanpham'],
            $row['motasp'],
            $row['idloai']
        ));
    }
    echo json_encode($arrayspnew);
    class Sanphammoinhat{
        function __construct($id,$tensanpham,$giasanpham,$hinhsanpham,$motasp,$idloai){
            $this->id=$id;
            $this->tensanpham=$tensanpham;
            $this->giasanpham=$giasanpham;
            $this->hinhsanpham=$hinhsanpham;
            $this->motasp=$motasp;
            $this->idloai=$idloai;
        }
    }
?>