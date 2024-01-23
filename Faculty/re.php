<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Class</title>
    <link rel="stylesheet" href="lp.css">
    <title>Details</title>
    </head>
<body>
<h1>Student Details</h1>
 <div class="container">
  <table class="styled-table">
<tbody>
<thead>
<tr>
<th>Student Code</th>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Course</th>
<th>Semester</th>


</tr>
</tbody>
</thead>
<?php
$connection= mysqli_connect("localhost","root","","classs");

if(isset($_POST['Search']))
{
 $Course=$_POST['Course'];


 
  $query="Select * from student where Course='$Course' ";
$query_run=mysqli_query($connection ,$query);
 
while($row=mysqli_fetch_array($query_run))
{
?>

<tr>
<td><?php echo $row['Roll']; ?></td>
<td><?php echo $row['Name']; ?></td>
<td><?php echo $row['Mobile']; ?></td>
<td><?php echo $row['Mail']; ?></td>
<td><?php echo $row['Course']; ?></td>
<td><?php echo $row['Sem']; ?></td>

 



</tr>



<?php
}
}

?>
</div>
</div>

<button type="submit" value="Back">Back</button>

 </body>
</html>