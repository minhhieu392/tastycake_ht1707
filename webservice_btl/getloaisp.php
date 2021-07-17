<?php
    include "connect.php";
    $query = "SELECT  * FROM loai_sanpham";
    $data = mysqli_query($conn,$query);
    $arrayloaisp = array();
    while($row = mysqli_fetch_assoc($data)){
        array_push($arrayloaisp,new Loaisp(
            $row['id'],
            $row['tenloaisanpham'],
            $row['hinhloai']
        ));
    }
    echo json_encode($arrayloaisp);
    class Loaisp{
        function __construct($id,$tenloaisanpham,$hinhloai){
            $this->id = $id;
            $this->tenloaisanpham = $tenloaisanpham;
            $this->hinhloai = $hinhloai;
        }

    }

?>  