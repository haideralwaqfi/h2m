<?php
$connection = mysqli_connect("localhost", "root", "", "h2m");

$output ="";
if($_POST['search_post_btn'] == 1)
{

  $id = $_POST['test_name'];
  $query = "SELECT * FROM test_list WHERE test_name = '$id'";
  $query_run = mysqli_query($connection,$query);

  if($query_run){
    while($row = mysqli_fetch_array($query_run))
    {
      
     $output = '<label for="test_name">Test Name</label>
     <input type="text" style="width: 300px" class="form-control" id="test_name" name="test_name" value="'.$row['test_name'].'" readonly>
     <label for="ref_low_m">Reference Low in MUMPS</label>
     <textarea type="text"  class="form-control" id="ref_low_m" name="ref_low_m" cols="30" rows="10">'.$row['ref_low_m'].'</textarea>
     <label for="ref_high_m">Reference High in MUMPS</label>
     <textarea type="text"  class="form-control" id="ref_high_m" name="ref_high_m" cols="30" rows="10">'.$row['ref_high_m'].'</textarea>
     <label for="critical_low_m">Critical Low in MUMPS</label>
     <textarea type="text"  class="form-control" id="critical_low_m" name="critical_low_m" cols="30" rows="10">'.$row['critical_low_m'].'</textarea>
     <label for="critical_high_m">Critical High in MUMPS</label>
     <textarea type="text"  class="form-control" id="critical_high_m" name="critical_high_m" cols="30" rows="10">'.$row['critical_high_m'].'</textarea>
     ';
    }
    
    echo $output;
  
   }
}
?>