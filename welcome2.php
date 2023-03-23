<?php
   include("config.php");
   session_start();
if(!isset($_SESSION['user_id'])){

header("Location:login.php?not -logged-in");

}
  
   if($_SERVER['REQUEST_METHOD'] == 'POST')
	{
         $homei = $_POST['home'];
		$awayi = $_POST['away'];
      $Venuei = $_POST['Venue'];
      $tossi = $_POST['toss'];
      $dati = $_POST['dat'];
     $midi=$_POST['madi'];
     
      $d1="fiba$midi";
      $d2="fie$midi";
      $d3="fibo$midi";
      $d4="siba$midi";
      $d5="sie$midi";
      $d6="sibo$midi";
      
      
		if(!empty($homei) && !empty($awayi) && !empty($Venuei) && !empty($tossi) && !empty($dati) && !empty($midi))
		{
         
         $query = "insert into matches (Matchno,Home,Away,Venue,Toss,Date) values ('$midi','$homei','$awayi','$Venuei','$tossi','$dati')";
			$result = mysqli_query($conn, $query);
          
         if($result)
			{
				
             $qm1="create Table ".$d1." (SN int NOT NULL AUTO_INCREMENT PRIMARY KEY,Batsman varchar(200),Descriptions varchar(200), Runs int,Balls int,Strike_Rate DECIMAL(10,2),Wide int,LegByes int,Byes int,NB int,Penalty int,TotalRuns int,TotalWickets int,TotalOvers DECIMAL(10,1));";
             $qp1=mysqli_query($conn,$qm1);
              $qm3="create Table ".$d3." (SN int NOT NULL AUTO_INCREMENT PRIMARY KEY,Bowler varchar(200),Overs DECIMAL(10,1),Maiden int, Runs int,Wickets int);";
             $qp3=mysqli_query($conn,$qm3);
             $qm4="create Table ".$d4."(SN int NOT NULL AUTO_INCREMENT PRIMARY KEY,Batsman varchar(200),Descriptions varchar(200), Runs int,Balls int,Strike_Rate DECIMAL(10,2),Wide int,LegByes int,Byes int,NB int,Penalty int,TotalRuns int,TotalWickets int,TotalOvers DECIMAL(10,1));";
             $qp4=mysqli_query($conn,$qm4);
          
             $qm6="create Table ".$d6." (SN int NOT NULL AUTO_INCREMENT PRIMARY KEY,Bowler varchar(200),Overs DECIMAL(10,1),Maiden int, Runs int,Wickets int);";
             $qp6=mysqli_query($conn,$qm6);
             mysqli_query($conn,"Update tmid set temid='$midi' where sn=1;");
             
             
             
                        
             
            header("location:fiba.php");
			}
         else{
            echo "problem entry data";
         }
      
		}
      else
		{
			echo "Enter data in all fields";
		}
   }
   
    ?>
<html>
   
   <head>
      <title>Welcome </title>
      <style>
    body{
      background-image:url("sf.jpeg");
      background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;}
  .bottom-right {
  position: absolute;
  color:white;
  
  bottom: 8px;
  right: 16px;
}
  p{ font-family: Georgia; color:whitesmoke; background-color: tomato; width:80;position: absolute;top: 30px;right: 16px; }
  *{box-sizing: border-box;border-color: aqua;}                                                           
    .container{
        border-radius: 5px; background-color:whitesmoke;padding:20px;margin: 50px 400px;
    }
    input[type=text] {width: 50%
    ;padding: 12px;
    border:1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 6px;
    resize:vertical;
    
    border-color: #d43f3a;
    } 
    input[type=submit]{
        background-color:rgb(22, 22, 206);
        color: white; padding: 12px 10px;
        border-color: #d43f3a;
        border-radius: 4px;cursor: pointer;
    }   
    input[type=submit]:hover{
        background-color: tomato;
    }
  
  </style>
   </head>
   
   <body>
     
   <form method=post>
   <div class="container">
   <input type="text" placeholder="MatchId" name="madi" ><br>
      <input type="text" placeholder="Home" name="home" id="home"><br>
      <input type="text" placeholder="Away" name="away" id="away" ><br>
      <input type="text" placeholder="Venue" name="Venue"  id="Venue"><br>
      <input type="text" placeholder="Toss" name="toss"  id="toss"><br>
      <input type="date" name="dat" id="dat"><br>
     <input type="submit" value="Create Match" >
</div>

   </form>
    
   <div class="bottom-right">Image:Melbourne Cricket Ground(MCG), Melbourne Australia<br>
Courtesy:cricket.com.au</div>
   <p><font size=5><a href="logout.php">Signout</a></font></p>
   </body>
   
</html>