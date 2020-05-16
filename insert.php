<?php
//insert.php;


if(isset($_POST["from_rl"]))
{
 $connect = new PDO("mysql:host=localhost;dbname=h2m", "root", "");
 
 for($count = 0; $count < count($_POST["from_rl"]); $count++)
 {  
  $query = "INSERT INTO ref_low 
  (test_name, gender, from_rl, age_in_1, to_rl, age_in_2, equal) 
  VALUES (:test_name, :gender , :from_rl, :age_in_1, :to_rl, :age_in_2, :equal)
  ";
  $statement = $connect->prepare($query);
  $statement->execute(
   array(
    ':test_name'   => $_POST["test_name"][$count],
    ':gender'  => $_POST["gender"][$count],
    ':from_rl'  => $_POST["from_rl"][$count], 
    ':age_in_1' => $_POST["age_in_1"][$count], 
    ':to_rl' => $_POST["to_rl"][$count],
    ':age_in_2' => $_POST["age_in_2"][$count],
    ':equal' => $_POST["equal"][$count]
    
   )
  );
 }
 $result = $statement->fetchAll();
 if(isset($result))
 {
  echo 'ok';
 }
}
?>