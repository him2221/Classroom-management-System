<?php
$mail=$_POST['mail'];
$Password=$_POST['Password'];


$con =new mysqli('localhost','root','','classs'); 
if($con->connect_error){
die("failed" .$con->connect_error);
}else{
$stmt=$con->prepare("Select * from admin where mail=?");
$stmt->bind_param("s",$mail);
$stmt->execute();
$stmt_result=$stmt->get_result();
if($stmt_result->num_rows > 0){
$data=$stmt_result->fetch_assoc();
if($data['password'] === $password) {

echo"<h2> password</h2>";
}else{
echo"<h2>invalid username or password</h2>";
}
}else{
echo "<h2>invalid email or paswword</h2>";
}
}

?>