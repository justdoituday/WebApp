<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home - Login</title>
</head>
<body>
	<style>

form {
	text-align: center;
	align: center;
	background-color: skyblue;
	width: auto;
	height: auto;
	border-style: solid;
	border-color: gray;
	padding
}
</style>
	<div>
		<form style="text-align: center"  action="/LoginPage" method="post">
			<h2>Login here..</h2>
			<div>
				Email Id <input type="text" name="userName" value="">
			</div>
			<div>
				<br>
			</div>
			<div>
				Password <input type="password" name="password" value="">
			</div>
			<div>
				<br>
			</div>
			<div>
				<input type="submit" value="Login" style="background-color: lime">
			</div>

			<h4>Click on below to Sign-Up</h4>
			<input type="button" value="Register"
				style="background-color: orange">

		</form>
	</div>

</body>
</html>