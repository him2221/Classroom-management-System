<?php
$IDT=$_POST['IDT'];
 $Name=$_POST['Name'];
 $Qualification=$_POST['Qualification'];
 $Course=$_POST['Course'];
 $Mobile=$_POST['Mobile'];
 $Mail=$_POST['Mail'];
 $Password=$_POST['Password'];


$conn =new mysqli('localhost','root','','classs'); 


if($conn->connect_error){
die('Connection Failed : '.$conn->connect_error);
}else{
  $stmt=$conn->prepare("insert into teacher(IDT,Name,Qualification,Course,Mobile,Mail,Password)
               values(?,?,?,?,?,?,?)");
  $stmt->bind_param("isssiss",$IDT,$Name,$Qualification,$Course,$Mobile,$Mail,$Password);
 $stmt->execute();
 echo "registration Successfully..";
 $stmt->close();
 $conn->close();
}
?>
 
 