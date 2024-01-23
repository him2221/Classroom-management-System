<?php
$mail=$_POST['mail'];
$password=$_POST['password'];



$con=new mysqli('localhost','root','','classs');
if($con->connect_error){
die("failed" .$con->connect_error);
}else{
$stmt=$con->prepare("select * from teacher where mail=?");
$stmt->bind_param("s",$mail);
$stmt->execute();
$stmt_result=$stmt->get_result();
if($stmt_result->num_rows > 0){
$data=$stmt_result->fetch_assoc();
if($data['Password'] === $password) {
 header('Location:http://localhost/classs/Faculty/facultypanel.html');
}else{
echo"<h2>invalid username or password</h2>";
}
}else{
echo "<h2>invalid email or paswword</h2>";
}
}

?>