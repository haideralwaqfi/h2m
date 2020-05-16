<?php


if(isset($_SESSION['username'])){
    $userLoggedin = $_SESSION['username'];
}else{
    header("Location: login.php");
}

require '../h2m/html/header.html';

?>