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
<h1>Teacher Information</h1>
<table class="styled-table">
<tbody>
<thead>
<tr>
<th>Teacher Id</th>
<th>Name</th>
<th>Qualification</th>
<th>Course</th>
<th>Teacher Mobile</th>
<th>Teacher Mail</th>


</tr>
</tbody>
</thead>
<?php
include("connection.php");
error_reporting(0);
$query="select * from teacher";
$data=mysqli_query($conn,$query);
$total=mysqli_num_rows($data);

echo $result['IDT']." ".$result['Name']." ".$result['Qualification']." ".$result['Course'].
" ".$result['Mobile']." ".$result['Mail'];
//echo $total;
if($total!=0)
{
  while($result=mysqli_fetch_assoc($data))
{
  echo "
  <tr>
  <td>".$result['IDT']."</td>
  <td>".$result['Name']."</td>
  <td>".$result['Qualification']."</td>
  <td>".$result['Course']."</td>
  <td>".$result['Mobile']."</td>
  <td>".$result['Mail']."</td>
  
  
  </tr>
  ";
}
} 
else
{
  echo"No records found";
}
?>
<button type="submit" value="Back">Back</button>
</table>
</body>
</html>