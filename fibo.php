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
if (isset($_POST["inschk3"]))

{
	$toto1=0;
	for($i3=12;$i3<=22;$i3++)
	
      { $b3="player1_{$i3}o";
	   $c3="player1_{$i3}m" ;
	   $d3="player1_{$i3}runs";
	   $e3="player1_{$i3}wkt";
	    $a3="player1_$i3";
	    $a13=$_POST[$a3];
	   $b13=$_POST[$b3];
	   $c13=$_POST[$c3] ;
	   $d13=$_POST[$d3];
	   $e13=$_POST[$e3];
	   if($a13==NULL)
	   {
          $b13=0;$c13=0;$d13=0;$e13=0;
	   }
	   
	   $toto1=$toto1+$b13; 
        $whole = floor($toto1);      
        $fraction = $toto1 - $whole;
		if($fraction>5)
		{
			$toto1=$toto1-$fraction;
			$toto1++;
		}
		
	   $u2="fibo$u1";
	   $q2313="Insert into ".$u2." (Bowler,Overs,Maiden,Runs,Wickets) values('$a13',$b13,$c13,$d13,$e13);";
	
	  $run3=mysqli_query($conn,$q2313); 
	  
    }
    mysqli_query($conn,"DELETE from ".$u2." where overs=0.0");
	$u4="fiba$u1";
	
	$q233="Update ".$u4." set TotalOvers=$toto1 where sn=1;";
	mysqli_query($conn,$q233);


    header("location:siba.php");
    
	    

	 
}?>
<html>
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
First Innings Bowling</title></head>
    <body>
        <form method= POST >
        <input type="text" name="player1_12" placeholder="No1.bowler">
          <input type="number" name="player1_12o" placeholder="Over">
          <input type="number" name="player1_12m" placeholder="Maiden">
          <input type="number" name="player1_12runs" placeholder="Runs">
          <input type="number" name="player1_12wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_13" placeholder="No2.bowler">
          <input type="text" name="player1_13o" placeholder="Over">
          <input type="number" name="player1_13m" placeholder="Maiden">
          <input type="number" name="player1_13runs" placeholder="Runs">
          <input type="number" name="player1_13wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_14" placeholder="No3.bowler">
          <input type="text" name="player1_14o" placeholder="Over">
          <input type="number" name="player1_14m" placeholder="Maiden">
          <input type="number" name="player1_14runs" placeholder="Runs">
          <input type="number" name="player1_14wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_15" placeholder="No4.bowler">
          <input type="text" name="player1_15o" placeholder="Over">
          <input type="number" name="player1_15m" placeholder="Maiden">
          <input type="number" name="player1_15runs" placeholder="Runs">
          <input type="number" name="player1_15wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_16" placeholder="No5.bowler">
          <input type="text" name="player1_16o" placeholder="Over">
          <input type="number" name="player1_16m" placeholder="Maiden">
          <input type="number" name="player1_16runs" placeholder="Runs">
          <input type="number" name="player1_16wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_17" placeholder="No6.bowler">
          <input type="text" name="player1_17o" placeholder="Over">
          <input type="number" name="player1_17m" placeholder="Maiden">
          <input type="number" name="player1_17runs" placeholder="Runs">
          <input type="number" name="player1_17wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_18" placeholder="No7.bowler">
          <input type="text" name="player1_18o" placeholder="Over">
          <input type="number" name="player1_18m" placeholder="Maiden">
          <input type="number" name="player1_18runs" placeholder="Runs">
          <input type="number" name="player1_18wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_19" placeholder="No8.bowler">
          <input type="text" name="player1_19o" placeholder="Over">
          <input type="number" name="player1_19m" placeholder="Maiden">
          <input type="number" name="player1_19runs" placeholder="Runs">
          <input type="number" name="player1_19wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_20" placeholder="No9.bowler">
          <input type="text" name="player1_20o" placeholder="Over">
          <input type="number" name="player1_20m" placeholder="Maiden">
          <input type="number" name="player1_20runs" placeholder="Runs">
          <input type="number" name="player1_20wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_21" placeholder="No10.bowler">
          <input type="text" name="player1_21o" placeholder="Over">
          <input type="number" name="player1_21m" placeholder="Maiden">
          <input type="number" name="player1_21runs" placeholder="Runs">
          <input type="number" name="player1_21wkt" placeholder="Wickets">
          <br>

          <input type="text" name="player1_22" placeholder="No11.bowler">
          <input type="text" name="player1_22o" placeholder="Over">
          <input type="number" name="player1_22m" placeholder="Maiden">
          <input type="number" name="player1_22runs" placeholder="Runs">
          <input type="number" name="player1_22wkt" placeholder="Wickets">
          <br><input type=submit value="Insert"  name=inschk3 ><br>
          </form>
    </body>
  
</html>