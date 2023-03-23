<?php
session_start();
include("config.php");
?><html>
    <head>
        <title>Welcome</title>
        <style type="text/css">
        body{
  background-image: url('wb.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  opacity=0.1;
}
td:hover{background-color: forestgreen;}
       tr:nth-child(even)
       {background-color:#BEE5EB;}
       tr:nth-child(odd)
       {background-color:greenyellow;}
       tr:first-child
       {background-color:firebrick;
       color:whitesmoke;
       font-weight: bold;}
       h1{font-family: Georgia; color:rgb(139, 0, 0); background-color: lawngreen;}
       h4{font-family:'Gill Sans'; }
       p{ font-family: Georgia; color:whitesmoke; background-color: tomato; width:80;position: absolute;top: 30px;right: 16px; }
</style>
      
    </head>
    
    <body >
    
        <h1><center> Welcome
               </center></h1>
               <p ><font size=5><a href="login.php">Log In</a></font></p>
               <h4>Enter the match number :</h4>
               <form method=POST action=scorecard.php>
                   <input type=text name="umid" placeholder="Match Number">
                   <input type=submit value="Enter"  name=otp><br>
               </form>
               
               <table border=1>
                <tr>
                   <th>Matchno.</th>
                   <th>Home</th>
                   <th>Away</th>
                   <th>Venue</th>
                   <th>Toss</th>
                   <th>Date</th>
                </tr>
                
             <?php
             $sql="Select * from Matches";
             $result1=mysqli_query($conn,$sql);
             
                       if($result1 && mysqli_num_rows($result1) > 0)
                       {
                      while($row = mysqli_fetch_assoc($result1))
       
                           {
                         echo "<tr><td>".$row["Matchno"]."</td><td>".$row["Home"]."</td><td>".$row["Away"]."</td><td>".$row["Venue"]."</td><td>".$row["Toss"]."</td><td>".$row["Date"]."</td></tr> ";
                      }
                           
                           
                       }
                            
                   
             ?>
             </table>
    </body>
</html>