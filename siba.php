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
if (isset($_POST["inschk4"]))

{ $tr2=0; $tw2=0;
	for($i4=1;$i4<=11;$i4++)
	{
	$b4="2_{$i4}d";
	$c4="2_{$i4}runs" ;
	$d4="2_{$i4}balls";
	$a4="2_$i4";
	$a14=$_POST[$a4];
	$b14=$_POST[$b4];
	$c14=$_POST[$c4] ;
	$d14=$_POST[$d4];

	if($b14=="DNB"||$b14=="Did Not Bat"||$b14=="did not bat")
	{
		$c14=0;$d14=0;
	}
	if($b14!="not out"&&$b14!="Not out"&&$b14!="not Out"&&$b14!="NOT OUT" && $b14!="DNB"&&$b14!="Did Not Bat"&&$b14!="did not bat")
	{
		
		$tw2++;
	}
	
	$tr2= $tr2+$c14;
	
	$u2="siba$u1";
	$q2314="Insert into ".$u2." (Batsman,Descriptions,Runs,Balls) values('$a14','$b14',$c14,$d14);";
	$run4=mysqli_query($conn,$q2314);
	
	 
	}
	$q237="Update ".$u2." set TotalWickets=$tw2 where sn=1;";
	
	mysqli_query($conn,$q237);
	$b5="Secondlb";
	$c5="Secondb" ;
	$d5="Secondnb";
	$a5="SecondW";
	$e5="Secondp";
	$a15=$_POST[$a5];
	$b15=$_POST[$b5];
	$c15=$_POST[$c5];
	$d15=$_POST[$d5];
	$e15=$_POST[$e5];
	
	$tr2=$tr2+$a15+$b15+$c15+$d15+$e15;
	
	$q2317="Update ".$u2." set TotalRuns=$tr2 where sn=1;"; 
	mysqli_query($conn,$q2317);
	$q2315="Update  ".$u2." set Wide=$a15,LegByes=$b15,Byes=$c15,NB=$d15,Penalty=$e15 where sn=1;";
	$run5=mysqli_query($conn,$q2315);
       
	
	  
	   mysqli_query($conn,"Update ".$u2." set Strike_rate=((Runs/Balls)*100);");
	if($run4&&$run5)
	 {
		header("location:sibo.php");
	 }
	 else
	 {
		echo "error"."<br>";
	 }
	 
}?>
<html>
<head>
<style>
    body{
      background-image:url("ib.jpg");
      background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;}
    }
   
    </style>
<title>
Second Innings Batting</title></head>
    <body>
        <form method= POST >
        <input type="text" name="2_1" placeholder="No1.batsman">
          <input type="text" name="2_1d" placeholder="Description">
          <input type="number" name="2_1runs" placeholder="Runs">
          <input type="number" name="2_1balls" placeholder="Balls">
          
          <br>  
          


          <input type="text" name="2_2" placeholder="No2.batsman">
          <input type="text" name="2_2d" placeholder="Description">
          <input type="number" name="2_2runs" placeholder="Runs">
          <input type="number" name="2_2balls" placeholder="Balls">
          <br>

          <input type="text" name="2_3" placeholder="No3.batsman">
          <input type="text" name="2_3d" placeholder="Description">
          <input type="number" name="2_3runs" placeholder="Runs">
          <input type="number" name="2_3balls" placeholder="Balls">
          <br>

          <input type="text" name="2_4" placeholder="No4.batsman">
          <input type="text" name="2_4d" placeholder="Description">
          <input type="number" name="2_4runs" placeholder="Runs">
          <input type="number" name="2_4balls" placeholder="Balls">
          <br>

          <input type="text" name="2_5" placeholder="No5.batsman">
          <input type="text" name="2_5d" placeholder="Description">
          <input type="number" name="2_5runs" placeholder="Runs">
          <input type="number" name="2_5balls" placeholder="Balls">
          <br>

          <input type="text" name="2_6" placeholder="No6.batsman">
          <input type="text" name="2_6d" placeholder="Description">
          <input type="number" name="2_6runs" placeholder="Runs">
          <input type="number" name="2_6balls" placeholder="Balls">
          <br>

          <input type="text" name="2_7" placeholder="No7.batsman">
          <input type="text" name="2_7d" placeholder="Description">
          <input type="number" name="2_7runs" placeholder="Runs">
          <input type="number" name="2_7balls" placeholder="Balls">
          <br>

          <input type="text" name="2_8" placeholder="No8.batsman">
          <input type="text" name="2_8d" placeholder="Description">
          <input type="number" name="2_8runs" placeholder="Runs">
          <input type="number" name="2_8balls" placeholder="Balls">
          <br>

          <input type="text" name="2_9" placeholder="No9.batsman">
          <input type="text" name="2_9d" placeholder="Description">
          <input type="number" name="2_9runs" placeholder="Runs">
          <input type="number" name="2_9balls" placeholder="Balls">
          <br>

          <input type="text" name="2_10" placeholder="No10.batsman">
          <input type="text" name="2_10d" placeholder="Description">
          <input type="number" name="2_10runs" placeholder="Runs">
          <input type="number" name="2_10balls" placeholder="Balls">
          <br>

          <input type="text" name="2_11" placeholder="No11.batsman">
          <input type="text" name="2_11d" placeholder="Description">
          <input type="number" name="2_11runs" placeholder="Runs">
          <input type="number" name="2_11balls" placeholder="Balls">
          <br>

          Extras:<input type=number name="SecondW" placeholder="Wide">
          <input type=number name="Secondlb" placeholder="Leg Byes">
          <input type=number name="Secondb" placeholder="Byes">
          <input type=number name="Secondnb" placeholder="No ball">
          <input type=number name="Secondp" placeholder="Penalty">
          <br> <input type=submit value="Insert"  name=inschk4><br><br>
          </form>
    </body>
  
</html>