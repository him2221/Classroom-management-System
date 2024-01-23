<?php
$Mail=$_POST['Mail'];
$Password=$_POST['Password'];



$con=new mysqli('localhost','root','','classs');
if($con->connect_error){
die("failed" .$con->connect_error);
}else{
$stmt=$con->prepare("select * from student where mail=?");
$stmt->bind_param("s",$Mail);
$stmt->execute();
$stmt_result=$stmt->get_result();
if($stmt_result->num_rows > 0){
$data=$stmt_result->fetch_assoc();
if($data['Password'] === $Password) {
 header('Location:http://localhost/classs/student/studentpanel.html');
}else{
echo"<h2>invalid username or password</h2>";
}
}else{
echo "<h2>invalid email or paswword</h2>";
}
}

?>