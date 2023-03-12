<?php
session_start();

if(isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Kiểm tra xem tên người dùng và mật khẩu có đúng không
    if($username == 'hoangtrung' && $password == '123') {
        // Set session variables
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $username;

        // chuyển đến 
        header("Location: index.php");
    } else {
        echo "Invalid username or password";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <link href="style.css" rel="stylesheet">
    <title>Đăng nhập</title>
</head>
<body>
    <h1>Đăng nhập</h1>
    <form method="POST" action="">
        <label>Tài khoản:</label><br>
        <input type="text" name="username"><br>
        <label>Mật khẩu:</label><br>
        <input type="password" name="password"><br><br>
        <input type="submit" value="Đăng nhập">
    </form>
</body>
</html> 

