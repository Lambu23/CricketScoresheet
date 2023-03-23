<?php
include("config.php" );
?>
<?php $query="Select * FROM Matches ORDER BY Matchno DESC limit 1";
$rp=mysqli_query($conn,$query);


if($rp)
{
   $row = mysqli_fetch_assoc($rp);

 {
   $c= $row["Matchno"];
   $c++;
   $d="Match$c";
   $qm="create Table $d (Batsman varchar(200),Description varchar(200), Runs int,Balls int,Strike_Rate int);";
   $qp=mysqli_query($conn,$qm);
   if($qp)
    {
        header("location:matchform.html");
    }
    else 
    { echo "cant create table";}


 }
    
    
}

else
 {
    echo "Cant Processes Query";
 }
?>
