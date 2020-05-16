<?php

require 'config.php';
require 'header.php';


//Declaring variables to prevent errors
$test_name = '';
$sample_type = '';
$ref_low = '';
$ref_high = '';
$ref_low_m = '';
$ref_high_m = '';
$critical_low = '';
$critical_high = '';
$critical_low_m = '';
$critical_high_m = '';
$test_unit = '';
$add_by = '';
$date = '';
$add_by = $_SESSION['username'];
$date = date('Y-m-d');


$error_array = array(); //Holds error messages



if (isset($_POST['addtest'])) {

    //Registration form values


    $test_name = strip_tags($_POST['test_name']); //Remove html tags
    $_SESSION['test_name'] = $test_name;

 
    $sample_type = strip_tags($_POST['sample_type']); //Remove html tags
    $_SESSION['sample_type'] = $sample_type;


    $ref_low = strip_tags($_POST['ref_low']); //Remove html tags
    $_SESSION['ref_low'] = $ref_low;


    $ref_high = strip_tags($_POST['ref_high']); //Remove html tags
    $_SESSION['ref_high'] = $ref_high;


    // $ref_low_m = strip_tags($_POST['ref_low_m']); //Remove html tags
    // $_SESSION['ref_low_m'] = $ref_low_m;


    // $ref_high_m = $_POST['ref_high_m'];
    // $_SESSION['ref_high_m'] = $ref_high_m;


    $critical_low = $_POST['critical_low'];
    $_SESSION['critical_low'] = $critical_low;


    $critical_high = $_POST['critical_high'];
    $_SESSION['critical_high'] = $critical_high;
  
 
    // $critical_low_m = $_POST['critical_low_m'];
    // $_SESSION['critical_low_m'] = $critical_low_m;

    // $critical_high_m = $_POST['critical_high_m'];
    // $_SESSION['critical_high_m'] = $critical_high_m;


    $test_unit = $_POST['test_unit'];
    $_SESSION['test_unit'] = $test_unit;



    if (strlen($test_name) > 40 || strlen($test_name) < 2) {
        array_push($error_array, "The Test name must be between 2 and 40 characters<br>");
    }



    $test_query = mysqli_query($con, "SELECT test_name FROM test_list WHERE test_name='$test_name'");
    $test_row = mysqli_num_rows($test_query);
    if ($test_row > 0) {
        array_push($error_array, "The test already exist<br>");
    }



    if (empty($error_array)) {

        $query = mysqli_query($con, "INSERT INTO test_list VALUES ('', 
                                                                '$test_name', 
                                                                '$sample_type', 
                                                                '$ref_low', 
                                                                '$ref_high', 
                                                                '$ref_low_m', 
                                                                '$ref_high_m', 
                                                                '$critical_low', 
                                                                '$critical_high', 
                                                                '$critical_low_m', 
                                                                '$critical_high_m', 
                                                                '$test_unit',
                                                                '$add_by',
                                                                '$date')");
    }
}


require '../h2m/html/addtest.html';
?>
