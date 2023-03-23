<?php include("config.php");

$qu = "select * from tmid where sn=1";
$poti= mysqli_query($conn,$qu);
$u = mysqli_fetch_assoc($poti);

$u1=$u["temid"];
function check_login($conn)
{

	if(isset($_SESSION['user_id']))
	{

		$id = $_SESSION['user_id'];
		$query = "select * from users where user_id = '$id' limit 1";

		$result = mysqli_query($conn,$query);
		if($result && mysqli_num_rows($result) > 0)
		{

			$user_data = mysqli_fetch_assoc($result);
			return $user_data;
		}
    }

	//redirect to login
	header("Location: login.php");
	die;

}
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
	 
	if($run1)
	 {
		echo "data entry first success"."<br>";
	 }
	 else
	 {
		echo "e"."<br>";
	 }
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
	 
	
	
	$q2312="Update   ".$u2." set Wide=$a12,LegByes=$b12,Byes=$c12,NB=$d12,Penalty=$e12 where sn=1;";
	$run2=mysqli_query($conn,$q2312);
	$q231="Update ".$u2." set TotalRuns=$tr1 where sn=1;"; 
	mysqli_query($conn,$q231);
	
    if($run2)
	 {
		echo "data entry second success "."<br>";
	 }
	 else
	 {
		echo "error"."<br>";
	 }
	
}
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
	$u4="fiba$u1";
	
	$q233="Update ".$u4." set TotalOvers=$toto1 where sn=1;";
	mysqli_query($conn,$q233);
	if($run3)
	     {
		   echo "data entry third success"."<br>";
	     }

	 else
	 {
		echo "error"."<br>";
	 }
}
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
	if($q237)
	 {
		echo "data entry fourth success"."<br>";
	 }
	 else
	 {
		echo "error"."<br>";
	 }
	 



	if($run5)
	 {
		echo "data entry fifth success "."<br>";
	 }
	 else
	 {
		echo "error"."<br>";
	 }
	
}
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


$u3="siba$u1";
       $q238="Update ".$u3." set TotalOvers=$toto2 where sn=1;";

       
	   mysqli_query($conn,$q238);
	   if($run6)
	 {
		echo "data entry sixth success"."<br>";
	 }
	 else
	 {
		echo "error"."<br>";
	 }
}

?>

