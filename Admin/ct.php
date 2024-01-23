<?php
$Roll=$_POST['Roll'];
 $Name=$_POST['Name'];
 $Father=$_POST['Father'];
 $Mobile=$_POST['Mobile'];
 $Mail=$_POST['Mail'];
 $Contact=$_POST['Contact'];
 $Course=$_POST['Course'];
 $Sem=$_POST['Sem'];
 $Password=$_POST['Password'];


$conn =new mysqli('localhost','root','','classs'); 


if($conn->connect_error){
die('Connection Failed : '.$conn->connect_error);
}else{
  $stmt=$conn->prepare("insert into student(Roll,Name,Father,Mobile,Mail,Contact,Course,Sem,Password)
               values(?,?,?,?,?,?,?,?,?)");
  $stmt->bind_param("issisisis",$Roll,$Name,$Father,$Mobile,$Mail,$Contact,$Course,$Sem,$Password);
 $stmt->execute();
 echo "<script>
    alert('Registration Sucessfully');
</script>";
 $stmt->close();
 $conn->close();
}
?>
 
 