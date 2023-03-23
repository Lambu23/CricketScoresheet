<?php 
include("config.php");
session_start();
if(!isset($_SESSION['user_id'])){

header("Location:login.php?not -logged-in");

}
$qu = "select * from tmid where sn=1";
$poti= mysqli_query($conn,$qu);
$u = mysqli_fetch_assoc($poti);

$u1=$u["temid"];
if (isset($_POST["inschk6"]))

{
	$toto2=0;
	for($i6=12;$i6<=22;$i6++)
	
	{ $b6="2_{$i6}o";
	 $c6="2_{$i6}m" ;
	 $d6="2_{$i6}runs";
	 $e6="2_{$i6}wkt";
	 $a6="2_$i6";
	$a16=$_POST[$a6];
	$b16=$_POST[$b6];
	$c16=$_POST[$c6] ;
	$d16=$_POST[$d6];
	$e16=$_POST[$e6];
	if($a16==NULL)
	   {
          $b16=0;$c16=0;$d16=0;$e16=0;
	   }
	$u2="sibo$u1";
	$q2316="Insert into ".$u2." (Bowler,Overs,Maiden,Runs,Wickets) values('$a16',$b16,$c16,$d16,$e16);";

	$run6=mysqli_query($conn,$q2316);
	 
	$toto2 = $toto2+$b16; 
        $whole = floor($toto2);      
        $fraction = $toto2 - $whole;
		if($fraction>5)
		{
			$toto2=$toto2-$fraction;
			$toto2++;
		}
}

mysqli_query($conn,"DELETE from ".$u2." where overs=0.0");
$u3="siba$u1";
       $q238="Update ".$u3." set TotalOvers=$toto2 where sn=1;";

       
	   mysqli_query($conn,$q238);
      
	   if($run6)
	 {
		header("Location:index.php");
	 }
	 else
	 {
		echo "error"."<br>";
	 }
}

?><html>
<head>
<style>
    body{
      background-image:url("bi.jpg");
      background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;}
    }
   
    </style>
<title>
Second Innings Bowling</title></head>
    <body> 
    <form method= POST >
    <input type="text" name="2_12" placeholder="No1.bowler">
          <input type="text" name="2_12o" placeholder="Over">
          <input type="number" name="2_12m" placeholder="Maiden">
          <input type="number" name="2_12runs" placeholder="Runs">
          <input type="number" name="2_12wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_13" placeholder="No2.bowler">
          <input type="text" name="2_13o" placeholder="Over">
          <input type="number" name="2_13m" placeholder="Maiden">
          <input type="number" name="2_13runs" placeholder="Runs">
          <input type="number" name="2_13wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_14" placeholder="No3.bowler">
          <input type="text" name="2_14o" placeholder="Over">
          <input type="number" name="2_14m" placeholder="Maiden">
          <input type="number" name="2_14runs" placeholder="Runs">
          <input type="number" name="2_14wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_15" placeholder="No4.bowler">
          <input type="text" name="2_15o" placeholder="Over">
          <input type="number" name="2_15m" placeholder="Maiden">
          <input type="number" name="2_15runs" placeholder="Runs">
          <input type="number" name="2_15wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_16" placeholder="No5.bowler">
          <input type="text" name="2_16o" placeholder="Over">
          <input type="number" name="2_16m" placeholder="Maiden">
          <input type="number" name="2_16runs" placeholder="Runs">
          <input type="number" name="2_16wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_17" placeholder="No6.bowler">
          <input type="text" name="2_17o" placeholder="Over">
          <input type="number" name="2_17m" placeholder="Maiden">
          <input type="number" name="2_17runs" placeholder="Runs">
          <input type="number" name="2_17wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_18" placeholder="No7.bowler">
          <input type="text" name="2_18o" placeholder="Over">
          <input type="number" name="2_18m" placeholder="Maiden">
          <input type="number" name="2_18runs" placeholder="Runs">
          <input type="number" name="2_18wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_19" placeholder="No8.bowler">
          <input type="text" name="2_19o" placeholder="Over">
          <input type="number" name="2_19m" placeholder="Maiden">
          <input type="number" name="2_19runs" placeholder="Runs">
          <input type="number" name="2_19wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_20" placeholder="No9.bowler">
          <input type="text" name="2_20o" placeholder="Over">
          <input type="number" name="2_20m" placeholder="Maiden">
          <input type="number" name="2_20runs" placeholder="Runs">
          <input type="number" name="2_20wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_21" placeholder="No10.bowler">
          <input type="text" name="2_21o" placeholder="Over">
          <input type="number" name="2_21m" placeholder="Maiden">
          <input type="number" name="2_21runs" placeholder="Runs">
          <input type="number" name="2_21wkt" placeholder="Wickets">
          <br>

          <input type="text" name="2_22" placeholder="No11.bowler">
          <input type="text" name="2_22o" placeholder="Over">
          <input type="number" name="2_22m" placeholder="Maiden">
          <input type="number" name="2_22runs" placeholder="Runs">
          <input type="number" name="2_22wkt" placeholder="Wickets">
          <br><input type=submit value="Insert"  name=inschk6 ><br>




        </form>
    </body>
  
</html>