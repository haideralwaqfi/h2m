<?php
require 'config.php';
require 'header.php';
require '../h2m/html/testlist.html';


 if(isset($_POST['search'])){

    $test_name = $_POST['test_name'];
    $query = "SELECT * FROM test_list WHERE test_name = '$test_name'";
    $result = $con->query($query);

    if($result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            echo "<tr><th class='fixed-side'>".$row['test_name']."</th><td>"
            .$row['sample_type']."</td><td>"
            .$row['ref_low']."</td><td>"
            .$row['ref_high']."</td><td>
            <button type='button' name='enter' id='enter' data-toggle='modal' data-target='#add_data_Modal' class='btn btn-warning'>Edit</button><button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
            .$row['ref_low_m']."</td><td>"
            ."<button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
            .$row['ref_high_m']."</td><td>"
            .$row['critical_low']."</td><td>"
            .$row['critical_high']."</td><td>"
            ."<button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
            .$row['critical_low_m']."</td><td>"
            ."<button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
            .$row['critical_high_m']."</td><td>"
            .$row['test_unit']."</td><td>"
            .$row['add_by']."</td><td>"
            .$row['date']."</td></tr>";
    
        }
        
        echo "
        <tfoot>
              <tr>
              <td class='fixed-side'> (" . $result->num_rows . ") Results</td>
              
              </tr>
          </tfoot>
        </table>";
    }else{
        echo "
        <tfoot>
              <tr>
              <td class='fixed-side'> (" . 0 . ") Results</td>
              
              </tr>
          </tfoot>
        </table>";
    }

 }


if(isset($_POST['searchall'])){

    $query = "SELECT * FROM test_list";
    $result = $con->query($query);

    if($result->num_rows > 0){
      while($row = $result->fetch_assoc()){
          echo "<tr><th class='fixed-side'>".$row['test_name']."</th><td>"
                         .$row['sample_type']."</td><td>"
                         .$row['ref_low']."</td><td>"
                         .$row['ref_high']."</td><td>
                         <button type='button' name='enter' id='enter' data-toggle='modal' data-target='#add_data_Modal' class='btn btn-warning'>Edit</button><button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
                         .$row['ref_low_m']."</td><td>"
                         ."<button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
                         .$row['ref_high_m']."</td><td>"
                         .$row['critical_low']."</td><td>"
                         .$row['critical_high']."</td><td>"
                         ."<button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
                         .$row['critical_low_m']."</td><td>"
                         ."<button class='btn btn btn-info btn-copy'>Copy</button></td><td>"
                         .$row['critical_high_m']."</td><td>"
                         .$row['test_unit']."</td><td>"
                         .$row['add_by']."</td><td>"
                         .$row['date']."</td></tr>";
  
      }
      
      echo "
      <tfoot>
            <tr>
            <td class='fixed-side'> (" . $result->num_rows . ") Results</td>
            
            </tr>
        </tfoot>
      </table>";
     
  }else{
      echo "
      <tfoot>
            <tr>
            <td class='fixed-side'> (" . 0 . ") Results</td>
            
            </tr>
        </tfoot>
      </table>";
  }

}


?>