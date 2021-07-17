<?php
    include "connect.php";
    $page = $_GET['page'];
    $idsp = $_POST['idloai'];
    $space = 5;

    $limit = ($page - 1)*$space;
    $mangsanpham = array();
    $query = "SELECT *FROM sanpham WHERE idloai = $idsp LIMIT $limit,$space";
    $data = mysqli_query($conn,$query);
    while($row=mysqli_fetch_assoc($data)){
        array_push($mangsanpham,new Sanpham(
            $row['id'],
            $row['tensanpham'],
            $row['giasanpham'],
            $row['hinhsanpham'],
            $row['motasp'],
            $row['idloai']
        ));
    }
    echo json_encode($mangsanpham);
    class Sanpham{
        function __construct($id,$tensanpham,$giasanpham,$hinhsanpham,$motasp,$idloai){
            $this->id =$id;
            $this->tensanpham=$tensanpham;
            $this->giasanpham=$giasanpham;
            $this->hinhsanpham=$hinhsanpham;
            $this->motasp=$motasp;
            $this->idloai=$idloai;
        }
    }
?>