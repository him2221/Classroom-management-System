<?php
$Name=$_POST['Name'];
 $Course=$_POST['Course'];
 $Doubt=$_POST['Doubt'];



$conn =new mysqli('localhost','root','','classs'); 


if($conn->connect_error){
die('Connection Failed : '.$conn->connect_error);
}else{
  $stmt=$conn->prepare("insert into doubt(Name,Course,Doubt)
               values(?,?,?)");
  $stmt->bind_param("sss",$Name,$Course,$Doubt);
 $stmt->execute();
 echo "<script>
    alert('Registration Sucessfully');
</script>";
 $stmt->close();
 $conn->close();
}
?>