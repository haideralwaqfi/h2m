<?php
//insertm.php;
error_reporting(E_ERROR | E_PARSE);

// refe low
if(isset($_POST["from_rl"]))
{

$con = mysqli_connect("localhost", "root", "", "h2m");
$testname = $_POST["test_name"][0];
$sql ="DELETE  FROM ref_low_m WHERE test_name = '$testname'";
$result = mysqli_query($con, $sql);
 

 $connect = new PDO("mysql:host=localhost;dbname=h2m", "root", "");
 for($count = 0; $count < count($_POST["from_rl"]); $count++)
 {  
  $query = "INSERT INTO ref_low_m
  (test_name, gender, from_rl, age_in_1, to_rl, age_in_2, equal) 
  VALUES (:test_name, :gender , :from_rl, :age_in_1, :to_rl, :age_in_2, :equal)
  ";
  $statement = $connect->prepare($query);
            if($_POST["gender"][$count] == ''){$gender = '';}
            if($_POST["age_in_1"][$count] == 'days'){$age = round($_POST["from_rl"][$count]/365, 3);}
            if ($_POST["age_in_1"][$count] == 'months') {$age = round(($_POST["from_rl"][$count]*30)/365, 3);}
            if($_POST["age_in_1"][$count] == 'weeks'){$age = round(($_POST["from_rl"][$count]*7)/365, 3);}
            if($_POST["age_in_1"][$count] == 'years'){$age = $_POST["from_rl"][$count];}
            if($_POST["age_in_2"][$count] == 'days'){$age2 = round($_POST["to_rl"][$count]/365, 3);}
            if ($_POST["age_in_2"][$count] == 'months') {$age2 = round(($_POST["to_rl"][$count]*30)/365, 3);}
            if($_POST["age_in_2"][$count] == 'weeks'){$age2 = round(($_POST["to_rl"][$count]*7)/365, 3);}
            if($_POST["age_in_2"][$count] == 'years'){$age2 = $_POST["to_rl"][$count];}
            if($_POST["gender"][$count] == 'MALE'){$gender = 'SEX="M"';}
            if($_POST["gender"][$count] == 'FEMALE'){$gender = 'SEX="F"';}
            if($_POST["from_rl"][$count] == ''){$age = '';}else{ $age = "AGE'<".$age; }
            if($_POST["to_rl"][$count] == ''){$age2 = '';}else{ $age2 = 'AGE<'.$age2; }

  $statement->execute(
   array(
    ':test_name'   => $_POST["test_name"][$count],
    ':gender'  => $gender,
    ':from_rl'  => $age,
    ':age_in_1' => $_POST["age_in_1"][$count],
    ':to_rl' => $age2,
    ':age_in_2' => $_POST["age_in_2"][$count],
    ':equal' => ':'.$_POST["equal"][$count].','
    
    )
);
}
$con = mysqli_connect("localhost", "root", "", "h2m");
$testname = $_POST["test_name"][0];
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
        $txt = str_replace("&AGE'<" , "AGE'<",$txt);
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , ")):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        if((substr_count($txt, 'AGE') == 1) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        $txt = str_replace('"','\"',$txt);
        $txt = str_replace("'","\'",$txt);
        $mumps .= $txt;
        $txt = ''; 
    }
    
}

$mumps = '\$S('.$mumps.')';
$mumps = str_replace(',)',')',$mumps);

$connect = mysqli_connect("localhost", "root", "", "h2m");
$query = "
    UPDATE `test_list` 
    SET ref_low_m = '$mumps'
    WHERE test_name = '$testname'
    ";
mysqli_query($connect, $query);

$mumps = str_replace('\\','',$mumps);
echo $mumps;


}


// refe high
if(isset($_POST["from_rh"]))
{
    $con = mysqli_connect("localhost", "root", "", "h2m");
    $testname = $_POST["test_name"][0];
    $sql ="DELETE  FROM ref_high_m WHERE test_name = '$testname'";
    $result = mysqli_query($con, $sql);


 $connect = new PDO("mysql:host=localhost;dbname=h2m", "root", ""); 
 for($count = 0; $count < count($_POST["from_rh"]); $count++)
 {  
  $query = "INSERT INTO ref_high_m
  (test_name, gender, from_rh, age_in_1, to_rh, age_in_2, equal) 
  VALUES (:test_name, :gender , :from_rh, :age_in_1, :to_rh, :age_in_2, :equal)
  ";
  $statement = $connect->prepare($query);
                if($_POST["gender"][$count] == ''){$gender = '';}
                if($_POST["age_in_1"][$count] == 'days'){$age = round($_POST["from_rh"][$count]/365, 3);}
                if ($_POST["age_in_1"][$count] == 'months') {$age = round(($_POST["from_rh"][$count]*30)/365, 3);}
                if($_POST["age_in_1"][$count] == 'weeks'){$age = round(($_POST["from_rh"][$count]*7)/365, 3);}
                if($_POST["age_in_1"][$count] == 'years'){$age = $_POST["from_rh"][$count];}
                if($_POST["age_in_2"][$count] == 'days'){$age2 = round($_POST["to_rh"][$count]/365, 3);}
                if ($_POST["age_in_2"][$count] == 'months') {$age2 = round(($_POST["to_rh"][$count]*30)/365, 3);}
                if($_POST["age_in_2"][$count] == 'weeks'){$age2 = round(($_POST["to_rh"][$count]*7)/365, 3);}
                if($_POST["age_in_2"][$count] == 'years'){$age2 = $_POST["to_rh"][$count];}
                if($_POST["gender"][$count] == 'MALE'){$gender = 'SEX="M"';}
                if($_POST["gender"][$count] == 'FEMALE'){$gender = 'SEX="F"';}
                if($_POST["from_rh"][$count] == ''){$age = '';}else{ $age = "AGE'<".$age; }
                if($_POST["to_rh"][$count] == ''){$age2 = '';}else{ $age2 = 'AGE<'.$age2; }

  $statement->execute(
   array(
    ':test_name'   => $_POST["test_name"][$count],
    ':gender'  => $gender,
    ':from_rh'  => $age,
    ':age_in_1' => $_POST["age_in_1"][$count],
    ':to_rh' => $age2,
    ':age_in_2' => $_POST["age_in_2"][$count],
    ':equal' => ':'.$_POST["equal"][$count].','
    
   )
  );
 }
 $con = mysqli_connect("localhost", "root", "", "h2m");
 $testname = $_POST["test_name"][0];
 $sql ="SELECT gender, from_rh,  to_rh, equal FROM ref_high_m WHERE test_name='$testname'";

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
        $txt = str_replace("&AGE'<" , "AGE'<",$txt);
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , ")):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        if((substr_count($txt, 'AGE') == 1) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        $txt = str_replace('"','\"',$txt);
        $txt = str_replace("'","\'",$txt);
        $mumps .= $txt;
        $txt = '';  
    }
    
}

$mumps = '\$S('.$mumps.')';
$mumps = str_replace(',)',')',$mumps);

$connect = mysqli_connect("localhost", "root", "", "h2m");
$query = "
    UPDATE `test_list` 
    SET ref_high_m = '$mumps'
    WHERE test_name = '$testname'
    ";
mysqli_query($connect, $query);

$mumps = str_replace('\\','',$mumps);
echo $mumps;
}

// critical low
if(isset($_POST["from_cl"]))
{
    $con = mysqli_connect("localhost", "root", "", "h2m");
    $testname = $_POST["test_name"][0];
    $sql ="DELETE  FROM critical_low_m WHERE test_name = '$testname'";
    $result = mysqli_query($con, $sql);

 $connect = new PDO("mysql:host=localhost;dbname=h2m", "root", ""); 
 for($count = 0; $count < count($_POST["from_cl"]); $count++)
 {  
  $query = "INSERT INTO critical_low_m
  (test_name, gender, from_cl, age_in_1, to_cl, age_in_2, equal) 
  VALUES (:test_name, :gender , :from_cl, :age_in_1, :to_cl, :age_in_2, :equal)
  ";
  $statement = $connect->prepare($query);
  if($_POST["gender"][$count] == ''){$gender = '';}
  if($_POST["age_in_1"][$count] == 'days'){$age = round($_POST["from_cl"][$count]/365, 3);}
  if ($_POST["age_in_1"][$count] == 'months') {$age = round(($_POST["from_cl"][$count]*30)/365, 3);}
  if($_POST["age_in_1"][$count] == 'weeks'){$age = round(($_POST["from_cl"][$count]*7)/365, 3);}
  if($_POST["age_in_1"][$count] == 'years'){$age = $_POST["from_cl"][$count];}
  if($_POST["age_in_2"][$count] == 'days'){$age2 = round($_POST["to_cl"][$count]/365, 3);}
  if ($_POST["age_in_2"][$count] == 'months') {$age2 = round(($_POST["to_cl"][$count]*30)/365, 3);}
  if($_POST["age_in_2"][$count] == 'weeks'){$age2 = round(($_POST["to_cl"][$count]*7)/365, 3);}
  if($_POST["age_in_2"][$count] == 'years'){$age2 = $_POST["to_cl"][$count];}
  if($_POST["gender"][$count] == 'MALE'){$gender = 'SEX="M"';}
  if($_POST["gender"][$count] == 'FEMALE'){$gender = 'SEX="F"';}
  if($_POST["from_cl"][$count] == ''){$age = '';}else{ $age = "AGE'<".$age; }
  if($_POST["to_cl"][$count] == ''){$age2 = '';}else{ $age2 = 'AGE<'.$age2; }

  $statement->execute(
   array(
    ':test_name'   => $_POST["test_name"][$count],
    ':gender'  => $gender,
    ':from_cl'  => $age,
    ':age_in_1' => $_POST["age_in_1"][$count],
    ':to_cl' => $age2,
    ':age_in_2' => $_POST["age_in_2"][$count],
    ':equal' => ':'.$_POST["equal"][$count].','
    
   )
  );
 }
 $con = mysqli_connect("localhost", "root", "", "h2m");
 $testname = $_POST["test_name"][0];
 $sql ="SELECT gender, from_cl,  to_cl, equal FROM critical_low_m WHERE test_name='$testname'";
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
        $txt = str_replace("&AGE'<" , "AGE'<",$txt);
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , ")):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        if((substr_count($txt, 'AGE') == 1) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        $txt = str_replace('"','\"',$txt);
        $txt = str_replace("'","\'",$txt);
        $mumps .= $txt;
        $txt = '';  
    }
    
}

$mumps = '\$S('.$mumps.')';
$mumps = str_replace(',)',')',$mumps);

$connect = mysqli_connect("localhost", "root", "", "h2m");
$query = "
    UPDATE `test_list` 
    SET critical_low_m = '$mumps'
    WHERE test_name = '$testname'
    ";
mysqli_query($connect, $query);

$mumps = str_replace('\\','',$mumps);
echo $mumps;
}

// critical high
if(isset($_POST["from_ch"]))
{
    $con = mysqli_connect("localhost", "root", "", "h2m");
    $testname = $_POST["test_name"][0];
    $sql ="DELETE  FROM critical_high_m WHERE test_name = '$testname'";
    $result = mysqli_query($con, $sql);

 $connect = new PDO("mysql:host=localhost;dbname=h2m", "root", ""); 
 for($count = 0; $count < count($_POST["from_ch"]); $count++)
 {  
  $query = "INSERT INTO critical_high_m
  (test_name, gender, from_ch, age_in_1, to_ch, age_in_2, equal) 
  VALUES (:test_name, :gender , :from_ch, :age_in_1, :to_ch, :age_in_2, :equal)
  ";
  $statement = $connect->prepare($query);
  if($_POST["gender"][$count] == ''){$gender = '';}
  if($_POST["age_in_1"][$count] == 'days'){$age = round($_POST["from_ch"][$count]/365, 3);}
  if ($_POST["age_in_1"][$count] == 'months') {$age = round(($_POST["from_ch"][$count]*30)/365, 3);}
  if($_POST["age_in_1"][$count] == 'weeks'){$age = round(($_POST["from_ch"][$count]*7)/365, 3);}
  if($_POST["age_in_1"][$count] == 'years'){$age = $_POST["from_ch"][$count];}
  if($_POST["age_in_2"][$count] == 'days'){$age2 = round($_POST["to_ch"][$count]/365, 3);}
  if ($_POST["age_in_2"][$count] == 'months') {$age2 = round(($_POST["to_ch"][$count]*30)/365, 3);}
  if($_POST["age_in_2"][$count] == 'weeks'){$age2 = round(($_POST["to_ch"][$count]*7)/365, 3);}
  if($_POST["age_in_2"][$count] == 'years'){$age2 = $_POST["to_ch"][$count];}
  if($_POST["gender"][$count] == 'MALE'){$gender = 'SEX="M"';}
  if($_POST["gender"][$count] == 'FEMALE'){$gender = 'SEX="F"';}
  if($_POST["from_ch"][$count] == ''){$age = '';}else{ $age = "AGE'<".$age; }
  if($_POST["to_ch"][$count] == ''){$age2 = '';}else{ $age2 = 'AGE<'.$age2; }

  $statement->execute(
   array(
    ':test_name'   => $_POST["test_name"][$count],
    ':gender'  => $gender,
    ':from_ch'  => $age,
    ':age_in_1' => $_POST["age_in_1"][$count],
    ':to_ch' => $age2,
    ':age_in_2' => $_POST["age_in_2"][$count],
    ':equal' => ':'.$_POST["equal"][$count].','
    
   )
  );
 }
 $con = mysqli_connect("localhost", "root", "", "h2m");
 $testname = $_POST["test_name"][0];
 $sql ="SELECT gender, from_ch,  to_ch, equal FROM critical_high_m WHERE test_name='$testname'";
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
        $txt = str_replace("&AGE'<" , "AGE'<",$txt);
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , ")):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        if((substr_count($txt, 'AGE') == 1) && (substr_count($txt, 'SEX') == 1)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace(":" , "):",$txt);}
        if((substr_count($txt, 'AGE') == 2) && (substr_count($txt, 'SEX') == 0)){$txt = str_replace("AGE<" , "&(AGE<",$txt);}
        $txt = str_replace('"','\"',$txt);
        $txt = str_replace("'","\'",$txt);
        $mumps .= $txt;
        $txt = '';  
    }
    
}

$mumps = '\$S('.$mumps.')';

$mumps = str_replace(',)',')',$mumps);

$connect = mysqli_connect("localhost", "root", "", "h2m");
$query = "
    UPDATE `test_list` 
    SET critical_high_m = '$mumps'
    WHERE test_name = '$testname'
    ";
mysqli_query($connect, $query);

$mumps = str_replace('\\','',$mumps);
echo $mumps;
}
