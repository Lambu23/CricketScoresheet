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
if (isset($_POST["inschk1"]))

{ $tr1=0;  $tw1=0;
	for($i1=1;$i1<=11;$i1++)
	
      {   $b1= "player1_{$i1}d";
	      $c1="player1_{$i1}runs" ;
	      $d1="player1_{$i1}balls";
	      $a1="player1_{$i1}";
	      $a11=$_POST[$a1];
	      $b11=$_POST[$b1];
	      $c11=$_POST[$c1] ;
	      $d11=$_POST[$d1];
	
	     if($b11!="not out" && $b11!="Not out" && $b11!="not Out" && $b11!="NOT OUT" && $b11!="DNB" && $b11!="Did Not Bat" && $b11!="did not bat")
	       { 
		     $tw1=$tw1+1;
			 
	       }
	     
	     if($b11=="DNB"||$b11=="Did Not Bat"||$b11=="did not bat")
	       {
		    $c11=0;$d11=0;
	       }
		   
		   $tr1=$tr1+$c11;
		   
	     $u2="fiba$u1";
	     $q2311="Insert into ".$u2." (Batsman,Descriptions,Runs,Balls) values('$a11','$b11',$c11,$d11);";
	     $run1=mysqli_query($conn,$q2311);
      } 
	  
	  $q232="Update ".$u2." set TotalWickets=$tw1 where sn=1;";
	   
	  mysqli_query($conn,$q232);
	 
	
	 
	mysqli_query($conn,"Update ".$u2." set Strike_rate=((Runs/Balls)*100);"); 

	$b2="firstlb";
	$c2="firstb" ;
	$d2="firstnb";
	$a2="firstW";
	$e2="firstp";
	
	$a12=$_POST[$a2];
	$b12=$_POST[$b2];
	$c12=$_POST[$c2] ;
	$d12=$_POST[$d2];
	$e12=$_POST[$e2];
	
	
	$tr1=$tr1+$a12+$b12+$c12+$d12+$e12;
	 
	
	$q231="Update ".$u2." set TotalRuns=$tr1 where sn=1;"; 
	mysqli_query($conn,$q231);
	$q2312="Update   ".$u2." set Wide=$a12,LegByes=$b12,Byes=$c12,NB=$d12,Penalty=$e12 where sn=1;";
	$run2=mysqli_query($conn,$q2312);
	
	
    if($run2)
	 {
		header("location:fibo.php");
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
First Innings Batting</title></head>
    <body>
        <form method= POST >
          <input type="text" name="player1_1" placeholder="No1.batsman">
          <input type="text" name="player1_1d" placeholder="Description">
          <input type="number" name="player1_1runs" placeholder="Runs">
          <input type="number" name="player1_1balls" placeholder="Balls">
           <br> 
          


          <input type="text" name="player1_2" placeholder="No2.batsman">
          <input type="text" name="player1_2d" placeholder="Description">
          <input type="number" name="player1_2runs" placeholder="Runs">
          <input type="number" name="player1_2balls" placeholder="Balls">
            <br>

          <input type="text" name="player1_3" placeholder="No3.batsman">
          <input type="text" name="player1_3d" placeholder="Description">
          <input type="number" name="player1_3runs" placeholder="Runs">
          <input type="number" name="player1_3balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_4" placeholder="No4.batsman">
          <input type="text" name="player1_4d" placeholder="Description">
          <input type="number" name="player1_4runs" placeholder="Runs">
          <input type="number" name="player1_4balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_5" placeholder="No5.batsman">
          <input type="text" name="player1_5d" placeholder="Description">
          <input type="number" name="player1_5runs" placeholder="Runs">
          <input type="number" name="player1_5balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_6" placeholder="No6.batsman">
          <input type="text" name="player1_6d" placeholder="Description">
          <input type="number" name="player1_6runs" placeholder="Runs">
          <input type="number" name="player1_6balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_7" placeholder="No7.batsman">
          <input type="text" name="player1_7d" placeholder="Description">
          <input type="number" name="player1_7runs" placeholder="Runs">
          <input type="number" name="player1_7balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_8" placeholder="No8.batsman">
          <input type="text" name="player1_8d" placeholder="Description">
          <input type="number" name="player1_8runs" placeholder="Runs">
          <input type="number" name="player1_8balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_9" placeholder="No9.batsman">
          <input type="text" name="player1_9d" placeholder="Description">
          <input type="number" name="player1_9runs" placeholder="Runs">
          <input type="number" name="player1_9balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_10" placeholder="No10.batsman">
          <input type="text" name="player1_10d" placeholder="Description">
          <input type="number" name="player1_10runs" placeholder="Runs">
          <input type="number" name="player1_10balls" placeholder="Balls">
          <br>

          <input type="text" name="player1_11" placeholder="No11.batsman">
          <input type="text" name="player1_11d" placeholder="Description">
          <input type="number" name="player1_11runs" placeholder="Runs">
          <input type="number" name="player1_11balls" placeholder="Balls">
          <br>

          Extras:<input type=number name="firstW" placeholder="Wide">
          <input type=number name="firstlb" placeholder="Leg Byes">
          <input type=number name="firstb" placeholder="Byes">
          <input type=number name="firstnb" placeholder="No ball">
          <input type=number name="firstp" placeholder="Penalty"> 
          <br><input type=submit value="Insert"  name=inschk1 ><br><br>
		  </form>
    </body>
  
</html>
