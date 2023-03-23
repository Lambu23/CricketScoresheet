<?php
  $dbServerName="localhost";
  $dbUsername="root";
  $dbPassword="";
  $dbName="loginsystem";
 
   
   if(!$conn = mysqli_connect($dbServerName,$dbUsername,$dbPassword,$dbName))
{

	die("failed to connect!");
}
?>