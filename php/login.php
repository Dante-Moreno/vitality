<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
</head>
<body>
	<form class="form_main" action="../php/login.php" method="POST">
    	<p class="heading">Login</p>
    	<div class="inputContainer">
			<input placeholder="Username" name="Nombre" class="inputField" type="text">
			<input placeholder="Password" name="Passw" class="inputField" type="password">
		</div>
			<input name="submit" class="submit" type="submit" value="Submit"></input>
			<div class="signupContainer">
				<p>Don't have any account?</p>
				<a href="../php/register.php">Sign up</a>
    		</div>
	</form>

</body>
</html>




