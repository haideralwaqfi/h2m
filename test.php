<?php

$con = mysqli_connect("localhost", "root", "", "h2m");
$testname = "CBC";
$sql ="SELECT gender, from_rl,  to_rl, equal FROM ref_low_m WHERE test_name='$testname'";

$result = mysqli_query($con, $sql);
$txt = '';
$mumps = '';


if(mysqli_num_rows($result)>0){
    while($row = mysqli_fetch_assoc($result))
    {

        foreach($row as $data => $value){    
            $txt .= $value;
        }
        $txt = str_replace('SEX="M"AGE','SEX="M"&(AGE',$txt);
        $txt = str_replace('SEX="F"AGE','SEX="F"&(AGE',$txt);
        if(substr_count($txt, 'AGE')== 2){$txt = str_replace("AGE'<" , "&AGE'<",$txt);}
        $txt = str_replace("&(&" , "&(",$txt);
        $txt = str_replace("&AGE'<" , "&(AGE'<",$txt);
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , ")):",$txt);}
        if((substr_count($txt, 'AGE') == 1) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace(":" , "):",$txt);}
        $txt = str_replace('"','\"',$txt);
        $txt = str_replace("'","\'",$txt);
        $mumps .= $txt;
        $txt = ''; 
    }
    
}

$mumps = '\$S('.$mumps.')';
$mumps = str_replace(',)',')',$mumps);

echo $mumps;

$connect = mysqli_connect("localhost", "root", "", "h2m");
$query = "
    UPDATE `test_list` 
    SET ref_low_m = '$mumps'
    WHERE test_name = '$testname'
    ";
mysqli_query($connect, $query);

?>
           