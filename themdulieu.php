<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sinh Viên</title>
</head>
<body>
    <form action="xulydulieu.php" method="post">
        <table>
            <tr>
                <td colspan="2"><h3>Thêm sinh viên</h3></td>
            </tr>
            <tr>
                <td>Mã Nhân Viên</td>
                <td><input type="text" id = "txt_Ma_NV" name = "txt_Ma_NV" value = "" size = "30"></td>
            </tr> 
            <tr>
                <td>Tên Nhân Viên</td>
                <td><input type="text" id = "txt_Ten_NV" name = "txt_Ten_NV" value = "" size = "30"></td>
            </tr>
            <tr>
                <td>Giới tính</td>
                <td>
                    <input type="text" id = "rd_gt_0" name = "rd_gt" value = "0">Nam
                    <input type="text" id = "rd_gt_1" name = "rd_gt" value = "1">Nữ
                    
                </td>
            </tr>
            <tr>
                <td>Nơi Sinh</td>
                <td><input type="text" id = "txt_Noi_Sinh" name = "txt_Noi_Sinh" value = "" size = "30"></td>
            </tr>
            <tr>
                <td>Tên Phòng</td>
                <td><input type="text" id = "txt_Ten_Phong" name = "txt_Ten_Phong" value = "" size = "30"></td>
            </tr>
            <tr>
            <td>Lương</td>
                <td><input type="number" id = "txt_Luong" name = "txt_Luong" value = "" size = "30"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" id = "btn" name="btnsSave" value="Save">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>