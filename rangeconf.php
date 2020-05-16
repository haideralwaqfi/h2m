<?php
require 'config.php';
require 'header.php';

$connect = new PDO("mysql:host=localhost;dbname=h2m", "root", "");

$test_name = "Not Found!";
if(isset($_POST['search'])){
  
  $test_name = $_POST['test_name'];
  $query = "SELECT * FROM test_list WHERE test_name = '$test_name'";
  $result = $con->query($query);

  if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
      $test_name = $row['test_name'];
    } 
  }else{
    $test_name = "Not Found!";
  }
}

require '../h2m/html/rangeconf.html';

?>


<script>
// ref low
$(document).ready(function(){
 
 $(document).on('click', '.addrl', function(){
  var html = '';
  html += '<tr>';
  html += '<td><input type="text" id="test-name" name="test_name[]" class="form-control test_name" value="<?php echo $test_name ?>" readonly>'
  html += '<td><select type="text" id="gender-id" name="gender[]" class="form-control gender_rl"><option value="">Null</option><option value="MALE">Male</option><option value="FEMALE">Female</option></select></td>';
  html += '<td><input type="text" id="from-id" name="from_rl[]" class="form-control from_rl" /></td>';
  html += '<td><select id="age_in_1-id" name="age_in_1[]" class="form-control age_in_1_rl"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="to-id" name="to_rl[]" class="form-control to_rl" /></td>';
  html += '<td><select id="age_in_2-id" name="age_in_2[]" class="form-control age_in_2_rl"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="equal-id" name="equal[]" class="form-control equal" /></td>';
  html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><i class="fas fa-minus"></button></td></tr>';
  $('#item_tablerl').append(html);
  
  //The next block of code it to get the last value from "less than" and copy it to input value of "greater than". 
  var valueArray = $('.to_rl').map(function() {
    return this.value;
}).get();
$('.from_rl').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (days, months..) from "less than" and copy it to input value of "greater than".

var valueArray = $('.age_in_2_rl').map(function() {
    return this.value;
}).get();

$('.age_in_1_rl').eq(-1).val(valueArray[valueArray.length - 2]);
$('.age_in_1_rl').eq(0).val('days');
$('.age_in_2_rl').eq(-1).val(valueArray[valueArray.length - 2]);
//The next block of code it to get the last value (gender) from "less than" and copy it to input value of "greater than".
var valueArray = $('.gender_rl').map(function() {
    return this.value;
}).get();
$('.gender_rl').eq(-1).val(valueArray[valueArray.length - 2]);

});




 $(document).on('click', '.remove', function(){
  $(this).closest('tr').remove();
 });
 


  $('#insert_formrl').on('submit', function(event){
  event.preventDefault();
  var error = '';
  $('.test_name').each(function(){var count = 1;if($(this).val() == 'Not Found!'){error += "<p>The Selected Test Not Found!</p>";return false;}count = count + 1;});
  $('.equal').each(function(){var count = 1;if($(this).val() == ''){error += "<p>Please enter a value at "+count+" Row</p>";return false;}count = count + 1;});
  
  var form_data = $(this).serialize();
  if(error == '')
  {
   $.ajax({
    url:"insertm.php",
    method:"POST",
    data:form_data,
    success:function(data)
    {
      if(data)
     {
      $('#item_tablerl').find("tr:gt(0)").remove();
      $('#mumpsrl').html(data);
     }
    }
   });
  }
  else
  {
   $('#errorrl').html('<div class="alert alert-danger">'+error+'</div>');
  }
 }); 
});

// ref high
$(document).ready(function(){
 
 $(document).on('click', '.addrh', function(){
  var html = '';
  html += '<tr>';
  html += '<td><input type="text" id="test-name" name="test_name[]" class="form-control test_name" value="<?php echo $test_name ?>" readonly>'
  html += '<td><select type="text" id="gender-id" name="gender[]" class="form-control gender_rh"><option value="">Null</option><option value="MALE">Male</option><option value="FEMALE">Female</option></select></td>';
  html += '<td><input type="text" id="from-id" name="from_rh[]" class="form-control from_rh" /></td>';
  html += '<td><select id="age_in_1-id" name="age_in_1[]" class="form-control age_in_1_rh"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="to-id" name="to_rh[]" class="form-control to_rh" /></td>';
  html += '<td><select id="age_in_2-id" name="age_in_2[]" class="form-control age_in_2_rh"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="equal-id" name="equal[]" class="form-control equal" /></td>';
  html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><i class="fas fa-minus"></button></td></tr>';
  $('#item_tablerh').append(html);

  //The next block of code it to get the last value from "less than" and copy it to input value of "greater than". 
  var valueArray = $('.to_rh').map(function() {
    return this.value;
}).get();
$('.from_rh').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (days, months..) from "less than" and copy it to input value of "greater than".
var valueArray = $('.age_in_2_rh').map(function() {
    return this.value;
}).get();
$('.age_in_1_rh').eq(-1).val(valueArray[valueArray.length - 2]);
$('.age_in_1_rh').eq(0).val('days');
$('.age_in_2_rh').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (gender) from "less than" and copy it to input value of "greater than".
var valueArray = $('.gender_rh').map(function() {
    return this.value;
}).get();
$('.gender_rh').eq(-1).val(valueArray[valueArray.length - 2]);

 });
 
 $(document).on('click', '.remove', function(){
  $(this).closest('tr').remove();
 });


    $('#insert_formrh').on('submit', function(event){
  event.preventDefault();
  var error = '';
  $('.test_name').each(function(){var count = 1;if($(this).val() == 'Not Found!'){error += "<p>The Selected Test Not Found!</p>";return false;}count = count + 1;});
  $('.equal').each(function(){var count = 1;if($(this).val() == ''){error += "<p>Please enter a value at "+count+" Row</p>";return false;}count = count + 1;});

  var form_data = $(this).serialize();
  if(error == '')
  {
   $.ajax({
    url:"insertm.php",
    method:"POST",
    data:form_data,
    success:function(data)
    {
      if(data)
     {
      $('#item_tablerh').find("tr:gt(0)").remove();
      $('#mumpsrh').html(data);
     }
    }
   });
  }
  else
  {
   $('#errorrh').html('<div class="alert alert-danger">'+error+'</div>');
  }
 }); 
});

// cri low
$(document).ready(function(){
 
 $(document).on('click', '.addcl', function(){
  var html = '';
  html += '<tr>';
  html += '<td><input type="text" id="test-name" name="test_name[]" class="form-control test_name" value="<?php echo $test_name ?>" readonly>'
  html += '<td><select type="text" id="gender-id" name="gender[]" class="form-control gender_cl"><option value="">Null</option><option value="MALE">Male</option><option value="FEMALE">Female</option></select></td>';
  html += '<td><input type="text" id="from-id" name="from_cl[]" class="form-control from_cl" /></td>';
  html += '<td><select id="age_in_1-id" name="age_in_1[]" class="form-control age_in_1_cl"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="to-id" name="to_cl[]" class="form-control to_cl" /></td>';
  html += '<td><select id="age_in_2-id" name="age_in_2[]" class="form-control age_in_2_cl"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="equal-id" name="equal[]" class="form-control equal" /></td>';
  html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><i class="fas fa-minus"></button></td></tr>';
  $('#item_tablecl').append(html);

    //The next block of code it to get the last value from "less than" and copy it to input value of "greater than". 
    var valueArray = $('.to_cl').map(function() {
    return this.value;
}).get();
$('.from_cl').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (days, months..) from "less than" and copy it to input value of "greater than".
var valueArray = $('.age_in_2_cl').map(function() {
    return this.value;
}).get();
$('.age_in_1_cl').eq(-1).val(valueArray[valueArray.length - 2]);
$('.age_in_1_cl').eq(0).val('days');
$('.age_in_2_cl').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (gender) from "less than" and copy it to input value of "greater than".
var valueArray = $('.gender_cl').map(function() {
    return this.value;
}).get();
$('.gender_cl').eq(-1).val(valueArray[valueArray.length - 2]);
 });
 
 $(document).on('click', '.remove', function(){
  $(this).closest('tr').remove();
 });


    $('#insert_formcl').on('submit', function(event){
  event.preventDefault();
  var error = '';
  $('.test_name').each(function(){var count = 1;if($(this).val() == 'Not Found!'){error += "<p>The Selected Test Not Found!</p>";return false;}count = count + 1;});
  $('.equal').each(function(){var count = 1;if($(this).val() == ''){error += "<p>Please enter a value at "+count+" Row</p>";return false;}count = count + 1;});

  var form_data = $(this).serialize();
  if(error == '')
  {
   $.ajax({
    url:"insertm.php",
    method:"POST",
    data:form_data,
    success:function(data)
    {
      if(data)
     {
      $('#item_tablecl').find("tr:gt(0)").remove();
      $('#mumpscl').html(data);
     }
    }
   });
  }
  else
  {
   $('#errorcl').html('<div class="alert alert-danger">'+error+'</div>');
  }
 }); 
});

// cri high
$(document).ready(function(){
 
 $(document).on('click', '.addch', function(){
  var html = '';
  html += '<tr>';
  html += '<td><input type="text" id="test-name" name="test_name[]" class="form-control test_name" value="<?php echo $test_name ?>" readonly>'
  html += '<td><select type="text" id="gender-id" name="gender[]" class="form-control gender_ch"><option value="">Null</option><option value="MALE">Male</option><option value="FEMALE">Female</option></select></td>';
  html += '<td><input type="text" id="from-id" name="from_ch[]" class="form-control from_ch" /></td>';
  html += '<td><select id="age_in_1-id" name="age_in_1[]" class="form-control age_in_1_ch"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="to-id" name="to_ch[]" class="form-control to_ch" /></td>';
  html += '<td><select id="age_in_2-id" name="age_in_2[]" class="form-control age_in_2_ch"><option value="days">Days</option><option value="weeks">Weeks</option><option value="months">Months</option><option value="years">Years</option></select></td>';
  html += '<td><input type="text" id="equal-id" name="equal[]" class="form-control equal" /></td>';
  html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><i class="fas fa-minus"></button></td></tr>';
  $('#item_tablech').append(html);

      //The next block of code it to get the last value from "less than" and copy it to input value of "greater than". 
      var valueArray = $('.to_ch').map(function() {
    return this.value;
}).get();
$('.from_ch').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (days, months..) from "less than" and copy it to input value of "greater than".
var valueArray = $('.age_in_2_ch').map(function() {
    return this.value;
}).get();
$('.age_in_1_ch').eq(-1).val(valueArray[valueArray.length - 2]);
$('.age_in_1_ch').eq(0).val('days');
$('.age_in_2_ch').eq(-1).val(valueArray[valueArray.length - 2]);

//The next block of code it to get the last value (gender) from "less than" and copy it to input value of "greater than".
var valueArray = $('.gender_ch').map(function() {
    return this.value;
}).get();
$('.gender_ch').eq(-1).val(valueArray[valueArray.length - 2]);
 });
 
 $(document).on('click', '.remove', function(){
  $(this).closest('tr').remove();
 });


    $('#insert_formch').on('submit', function(event){
  event.preventDefault();
  var error = '';
  $('.test_name').each(function(){var count = 1;if($(this).val() == 'Not Found!'){error += "<p>The Selected Test Not Found!</p>";return false;}count = count + 1;});
  $('.equal').each(function(){var count = 1;if($(this).val() == ''){error += "<p>Please enter a value at "+count+" Row</p>";return false;}count = count + 1;});

  var form_data = $(this).serialize();
  if(error == '')
  {
   $.ajax({
    url:"insertm.php",
    method:"POST",
    data:form_data,
    success:function(data)
    {
      if(data)
     {
      $('#item_tablech').find("tr:gt(0)").remove();
      $('#mumpsch').html(data);
     }
    }
   });
  }
  else
  {
   $('#errorch').html('<div class="alert alert-danger">'+error+'</div>');
  }
 }); 
});
</script>



