<?php 

require 'config.php';
require '../h2m/html/login.html';

if(isset($_POST['login_btn'])){
    
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    
    $password = md5($password);
    $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) == 1){
        $_SESSION['message'] = "You are now logged in";
        $_SESSION['username'] = $username;
        header("location: testlist.php");
    }else{
        $_SESSION['message'] = "Incorrect username/password";
        $message = $_SESSION['message'];
        echo "<script type='text/javascript'>alert('$message');</script>";
        
    }
}





?>