<?php
include("config.php");
$sql="DELETE from sibot1133 where overs=0.0";
 $run=mysqli_query($conn,"DELETE from sibot1133 where overs=0.0");
 if($run)
 {
    echo "d";
 }
 ?>
