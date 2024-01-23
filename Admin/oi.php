<!DOCTYPE=html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lp.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<title>Class</title>
</head>

<body>
<h1>Student Information</h1>
<div class="container">
<table class="styled-table">
<tbody>
<thead>
<tr>
<th>Student Code</th>
<th>Name</th>
<th>Father Name</th>
<th>Mobile</th>
<th>Email</th>
<th>Alternate Mobile Number</th>
<th>Course</th>
<th>Sem</th>

</tr>
</tbody>
</thead>
<?php
include("connection.php");
error_reporting(0);
$query="select * from student";
$data=mysqli_query($conn,$query);
$total=mysqli_num_rows($data);

echo $result['Roll']." ".$result['Name']." ".$result['Father']." ".$result['Mobile'].
" ".$result['Mail']." ".$result['Contact']." ".$result['Course']." ".$result['Sem'];
//echo $total;
if($total!=0)
{
  while($result=mysqli_fetch_assoc($data))
{
  echo "
  <tr>
  <td>".$result['Roll']."</td>
  <td>".$result['Name']."</td>
  <td>".$result['Father']."</td>
  <td>".$result['Mobile']."</td>
  <td>".$result['Mail']."</td>
  <td>".$result['Contact']."</td>
  <td>".$result['Course']."</td>
  <td>".$result['Sem']."</td>
  
  </tr>
  ";
}
} 
else
{
  echo"No records found";
}
?>
</div>
</div>
</table>
</body>
</html>