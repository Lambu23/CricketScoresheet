<?php 

session_start();

	include("config.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//read from database
			$query = "select * from users where user_uid= '$user_name' ";
			$result = mysqli_query($conn, $query);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);
					
					if($user_data['user_pwd'] == $password)
					{

						$_SESSION['user_id'] = $user_data['user_id'];
						header("Location: welcome2.php");
						die;
					}
				}
			}
			
			echo "wrong username or password!";
		}else
		{
			echo "Enter Valid User Name Password";
		}
	}

?>


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<style type="text/css">
	body{
		background-image:url("lf.jpg");
		background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;

	}
	
	#text{

		height: 25px;
		border-radius: 5px;
		padding: 4px;
		border: solid thin #aaa;
		width: 100%;
	}

	#button{

		padding: 10px;
		width: 100px;
		color: white;
		background-color: lightblue;
		border: none;
	}

	#box{

		background-color: grey;
		margin: 100px 450px;
		width: 300px;
		padding: 20px;
	}

	</style>
</head>
<body >

	

	<div id="box">
		
		<form method="post">
			<div style="font-size: 20px;margin: 10px;color: white;">Login</div>

			<input id="text" type="text" name="user_name"><br><br>
			<input id="text" type="password" name="password"><br><br>

			<input id="button" type="submit" value="Login" ><br><br>

			
		</form>
	</div>
</body>
</html>