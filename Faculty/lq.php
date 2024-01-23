<?php
$IDT=$_POST['IDT'];
 $Course=$_POST['Course'];
 $feed=$_POST['feed'];
  
 


$conn =new mysqli('localhost','root','','classs'); 


if($conn->connect_error){
die('Connection Failed : '.$conn->connect_error);
}else{
  $stmt=$conn->prepare("insert into tfeedback(IDT,Course,feed)
               values(?,?,?)");
  $stmt->bind_param("sss",$IDT,$Course,$feed);
 $stmt->execute();
 echo "added Successfully..";
 $stmt->close();
 $conn->close();
}
?>
 
 