<?php
include("config.php");
if (isset($_POST["otp"]))
{
  $uik=$_POST["umid"];
  $u1="fiba$uik";
  $u2="fibo$uik";
  $u3="siba$uik";
  $u4="sibo$uik";
   $sql1="Select * from ".$u1."";
   $result1=mysqli_query($conn,$sql1);
echo "<table border=1>";
echo "<tr><td colspan=5>First Innings Batting</td></tr><tr><th>Batsman</th><th>Description</th><th>Runs</th><th>Balls</th><th>Strike Rate</th></tr>";
 if($result1 && mysqli_num_rows($result1) > 0)
 {
while($row1 = mysqli_fetch_assoc($result1))
       
 {
    
   echo "<tr><td>".$row1["Batsman"]."</td><td>".$row1["Descriptions"]."</td><td>".$row1["Runs"]."</td><td>".$row1["Balls"]."</td><td>".$row1["Strike_Rate"]."</td></tr> ";
}
  }
 $sql11="Select * from ".$u1." where sn=1";
$result11=mysqli_query($conn,$sql11);
if($result11 && mysqli_num_rows($result11) > 0)
{

$row11 = mysqli_fetch_assoc($result11);
    echo "<tr ><td colspan=5 align=right >Extras:(Wide=".$row11["Wide"].",lb=".$row11["LegByes"].",b=".$row11["Byes"].",nb=".$row11["NB"].",P=".$row11["Penalty"].")</td></tr>";
    echo"<tr><td colspan=5 align=right>Total:".$row11["TotalRuns"]."/".$row11["TotalWickets"]."(".$row11["TotalOvers"].")</td></tr>";
}
 
 echo "</table><br>";
 echo "<table border=1>";
 echo "<tr><td colspan=5>First Innings Bowling</td></tr><tr><th>Bowler</th><th>Overs</th><th>Maidens</th><th>Runs</th><th>Wicket</th></tr>";
 $sql2="Select * from ".$u2." ";
$result2=mysqli_query($conn,$sql2);
 if($result2 && mysqli_num_rows($result2) > 0)
 {
while($row2 = mysqli_fetch_assoc($result2))
       
 {
    
   echo "<tr><td>".$row2["Bowler"]."</td><td>".$row2["Overs"]."</td><td>".$row2["Maiden"]."</td><td>".$row2["Runs"]."</td><td>".$row2["Wickets"]."</td></tr> ";
}
  }



  $sql3="Select * from ".$u3."";
   $result3=mysqli_query($conn,$sql3);
   echo "</table><br><br>";
  echo "<table border=1>";
  echo "<tr><td colspan=5>Second Innings Batting</td></tr><tr><th>Batsman</th><th>Description</th><th>Runs</th><th>Balls</th><th>Strike Rate</th></tr>";
     if($result3 && mysqli_num_rows($result3) > 0)
     {
  while($row3 = mysqli_fetch_assoc($result3))
       
   {
      
 echo "<tr><td>".$row3["Batsman"]."</td><td>".$row3["Descriptions"]."</td><td>".$row3["Runs"]."</td><td>".$row3["Balls"]."</td><td>".$row3["Strike_Rate"]."</td></tr> ";
  }
}
     $sql31="Select * from ".$u3." where sn=1";
  $result31=mysqli_query($conn,$sql31);
  if($result31 && mysqli_num_rows($result31) > 0)
  {

      $row31 = mysqli_fetch_assoc($result31);
      echo "<tr ><td colspan=5 align=right >Extras:(Wide=".$row31["Wide"].",lb=".$row31["LegByes"].",b=".$row31["Byes"].",nb=".$row31["NB"].",P=".$row31["Penalty"].")</td></tr>";
      echo"<tr><td colspan=5 align=right>Total:".$row31["TotalRuns"]."/".$row31["TotalWickets"]."(".$row31["TotalOvers"].")</td></tr>";
  }
 
     echo "</table><br><br>";
     echo "<table border=1>";
     echo "<tr><td colspan=5>Second Innings Bowling</td></tr><tr><th>Bowler</th><th>Overs</th><th>Maidens</th><th>Runs</th><th>Wicket</th></tr>";
     $sql4="Select * from ".$u4." ";
  $result4=mysqli_query($conn,$sql4);
     if($result4 && mysqli_num_rows($result4) > 0)
     {
  while($row4 = mysqli_fetch_assoc($result4))
       
   {
      
 echo "<tr><td>".$row4["Bowler"]."</td><td>".$row4["Overs"]."</td><td>".$row4["Maiden"]."</td><td>".$row4["Runs"]."</td><td>".$row4["Wickets"]."</td></tr>";
  }
echo "</table>";}
 } 
?>
<html><head><style>
   table{
      width:75%;
      border-collapse: collapse;
   }
   tr:nth-child(even) {background-color:lightgreen;}
   tr:nth-child(odd) {background-color:limegreen;}
    td {
  padding: 15px;
  text-align: left;   
                      
}
p{ font-family: Georgia; color:darkturquoise; background-color: tomato; width:400;position: absolute;top: 30px;right: 16px; }
th {padding: 15px;
  text-align: left;
  background-color:tomato;
  color: white;}tr:hover {background-color: aqua;}
</style>
<title>
Scorecard
</title></head>
<body>

</body>
</html>