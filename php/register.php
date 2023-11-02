<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../css/register.css?1.5">
	<title>Registro</title>
</head>
<body>
	<form class="form_main" action="../php/register.php" method="POST">
    	<p class="heading">Register</p>
    	<div class="inputContainer">
			<input placeholder="Username" name="Nombre" id="username" class="inputField" type="text">
			<input placeholder="Surname" name="Apellido" id="surname" class="inputField" type="text">
			<input placeholder="Email" name="Email" id="email" class="inputField" type="mail">
			<input placeholder="Password" name="Passw" id="password" class="inputField" type="password">

		</div>
			<button name="submit" type="submit" class="form_submit">Submit</button>
			<div class="signupContainer">
				<p>Already have an account?</p>
				<a href="/php/login.php">Sign in</a>
    		</div>
	</form>
</body>
</html>

