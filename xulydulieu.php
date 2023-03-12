<?php
        $conn= mysqli_connect("localhost", "root", "","ql_nhansu");
        if (isset($_POST["btnSave"]))
        {
            $maNV = $_POST["txt_Ma_NV"];
            $tenNV = $_POST["txt_Ten_NV"];
            $gioitinh = $_POST["rd_gt"];
            $noisinh = $_POST["txt_Noi_Sinh"];
            $maphong = $_POST["txt_Ma_Phong"];
            $luong = $_POST["txt_Luong"];
        }

        $sql = "INSERT INTO nhanvien VALUES ('$maNV','$tenNV','$gioitinh','$noisinh',$maphong','$luong')";
        if(mysqli_query($conn,$sql))
        {
            header('location: index.php');
        }
        else {
            $result = "Lỗi Thêm Mới" . mysqli_errno($conn);
        }
?>  