<?php


$conn=mysqli_connect("localhost","root","","classs");

if($conn)
{
 //echo "connection ok";

}

else
{
 echo"Connection Failed" .mysqli_connect_error();
}
?>