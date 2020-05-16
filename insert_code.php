<?php
//inserttriage.php;
$output = '';
$connect = mysqli_connect("localhost", "root", "", "h2m");
if(!empty($_POST))
{
    $test_name = mysqli_real_escape_string($connect, $_POST["test_name"]);
    $ref_low_m = mysqli_real_escape_string($connect, $_POST["ref_low_m"]);  
    $ref_high_m = mysqli_real_escape_string($connect, $_POST["ref_high_m"]);
    $critical_low_m = mysqli_real_escape_string($connect, $_POST["critical_low_m"]);
    $critical_high_m = mysqli_real_escape_string($connect, $_POST["critical_high_m"]);

    
    $querytiage = "
    UPDATE `test_list` 
    SET ref_low_m = '$ref_low_m', ref_high_m = '$ref_high_m', critical_low_m = '$critical_low_m', critical_high_m = '$critical_high_m'
    WHERE test_name = '$test_name'
    ";
    mysqli_query($connect, $querytiage);

}



?>