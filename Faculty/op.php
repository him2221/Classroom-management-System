<?php
$Datee=$_POST['Datee'];
 $Timee=$_POST['Timee'];
 $Subj=$_POST['Subj'];
 $Link=$_POST['Link'];
 


$conn =new mysqli('localhost','root','','classs'); 


if($conn->connect_error){
die('Connection Failed : '.$conn->connect_error);
}else{
  $stmt=$conn->prepare("insert into timings(Datee,Timee,Subj,Link)
               values(?,?,?,?)");
  $stmt->bind_param("ssss",$Datee,$Timee,$Subj,$Link);
 $stmt->execute();
 echo "registration Successfully..";
 $stmt->close();
 $conn->close();
}
?>
 