<?php

session_start();
if(isset($_POST['email'])){
$Lmail=$_POST['email'];
$Lpassword=$_POST['password'];


    include 'lib/user.php';
    $re=loginuser($Lmail,$Lpassword);
    // echo '<pre>';
    // print_r($re);die;

    if(!empty($re)){
        $_SESSION['users']=$re;
        header("LOCATION:home.php");
    }else{
        $error='email or password not found';
        // header("LOCATION:login.php");
    }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login form design</title>
    <link rel="stylesheet" href="backassets/dist/css/login.css">
</head>
<body>
    <div class="Loginbox">
        <img src="backassets/dist/img/login.jpg" class="loginimg">
        <h1><?php echo (isset($error))?$error :'Login Here'; ?></h1>
        <form action="login.php" method="post">
            <p>UserName</p>
            <input type="text" name="email" placeholder="Enter mail">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit" name="" value="Login">
            <a href="#">Lost Your Password</a>
            <br>
            <a href="register.php">Dont have account?</a>

        </form>
    </div>
</body>
</html>