<?php

$localhost="localhost";
$dbusername="root";
$dbpassword="";
$dbname="classs";

$conn = mysqli_connect($localhost,$dbusername,$dbpassword,$dbname);

if (isset($_POST["submit"]))

$Course = $_POST["Course"];
$Subject = $_POST["Subject"];
$pname = rand(1000,1000). "-".$_FILES["Filee"]["name"];
$tname=$_FILES["file"]["tmp_name"];
$uploads_dir='file/';
move_uploaded_file( $tname,$uploads_dir. '/' .$pname);

$sql="Insert into books(Course,Subject,Filee)values('$Course','$Subject','$pname')";

if(mysqli_query($conn,$sql)){
echo "file";
}
else{ "Error";
}

 
 