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
<h1>Class Timings</h1>
 <div class="container">
  <table class="styled-table">
<tbody>
<thead>
<tr>
<th>Date</th>
<th>Time</th>
<th>Subject</th>
<th>Class Link</th>

</tr>
</tbody>
</thead>
<?php
$connection= mysqli_connect("localhost","root","","classs");

if(isset($_POST['Search']))
{
 $Subj=$_POST['Subj'];


 
  $query="Select * from timings where Subj='$Subj' ";
$query_run=mysqli_query($connection ,$query);
 
while($row=mysqli_fetch_array($query_run))
{
?>

<tr>
<td><?php echo $row['Datee']; ?></td>
<td><?php echo $row['Timee']; ?></td>
<td><?php echo $row['Subj']; ?></td>
<td><?php echo  '<a href="' . $row['Link'] . '">' .'Click Here'.'</a>' ; ?></td>
 



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