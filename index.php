<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style.css" rel="stylesheet">
    <title>Trang Chủ</title>
</head>
<body>
    <h3 align = "center">THÔNG TIN NHÂN VIÊN</h3>
    <table border="1" align ="center" cellspacing="0" cellpadding="0" width = "850px">
        <tr style="color: red;">
            <th width="20%">Mã Nhân Viên</th>
            <th width="20%">Tên Nhân Viên</th>
            <th width="20%">Giới Tính</th>
            <th width="20%">Nơi Sinh</th>
            <th width="20%">Tên Phòng</th>
            <th width="20%">Lương</th>
            <th width="20%"><button type="button" onclick="myFunction()">Thêm mới</button></th>
        </tr>
    <?php
        $conn= mysqli_connect("localhost", "root", "","ql_nhansu");
        $sql = "SELECT * FROM nhanvien";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result))
        {
            $maNV = $row["Ma_NV"];
            $tenNV = $row["Ten_NV"];
            $gioitinh = $row["Phai"];
            $noisinh = $row["Noi_Sinh"];
            $maphong = $row["Ma_Phong"];
            $luong = $row["Luong"];

        
    ?>   
        <tr>
            <td><?php echo $maNV ?></td>
            <td><?php echo $tenNV ?></td>
            <td><img src="<?php echo $gioitinh == 'NU'? "./images/nu.png" : "./images/nam.png"?>"></td>
            <td><?php echo $noisinh ?></td>
            <td><?php echo $maphong ?></td>
            <td><?php echo $luong ?></td>
        </tr>
        <?php
        }
        ?>
        <?php
        mysqli_close($conn); 
        ?>

    </table>
    <div class="lienket">
        <a href="login.php" style="text-decoration: none;
    color: black;
    text-align: center;
    display: block;
    margin-top: 20px;">Quay Lại Trang Đăng Nhập</a>
    </div>
    <h1>commit1</h1>
</body>
</html>
<script>
    function myFunction(){
        location.replace("themdulieu.php");
    }
</script>
