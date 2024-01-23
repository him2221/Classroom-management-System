<?php
$Name=$_POST['Name'];
 $Feed=$_POST['Feed'];




$conn =new mysqli('localhost','root','','classs'); 


if($conn->connect_error){
die('Connection Failed : '.$conn->connect_error);
}else{
  $stmt=$conn->prepare("insert into stufeed(Name,Feed)
               values(?,?)");
  $stmt->bind_param("ss",$Name,$Feed);
 $stmt->execute();
 echo "<script>
    alert('Registration Sucessfully');
</script>";
 $stmt->close();
 $conn->close();
}
?>