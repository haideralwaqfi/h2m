<?php
$connection = mysqli_connect("localhost", "root", "", "h2m");


if(isset($_POST['search_post_btn']))
{
  $test_name = $_POST['test_name'];
  $query = "SELECT * FROM test_list WHERE test_name = '$test_name'";
  $query_run = $connection->query($query);

  if($query_run->num_rows > 0){
    while($row = mysqli_fetch_array($query_run))
    {
      
     $output = '
     <label for="test_name">Test Name</label>
     <input type="text" style="width: 300px" class="form-control" id="test_name" name="test_name" value="'.$row['test_name'].'" placeholder="" readonly>
     ';
    }
    echo $output;
  }else{
    $output = '
    <label for="test_name">Test Name</label>
    <input type="text" style="width: 300px" class="form-control" id="test_name" name="test_name" value="Not Found!" placeholder="Not Found!" readonly>
    ';
    echo $output;
  }

}
  ?>

