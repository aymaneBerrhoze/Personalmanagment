<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>login</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="form-structor">
	<form  method="post" action="ConnexionEm">
	<div class="signup">
		<h2 class="form-title" id="signup"><span>or</span>Employe</h2>
		<div class="form-holder">
			<input type="email" name="emailEmploye" class="input" placeholder="Email" />
			<input type="password" name="mdpEmploye" class="input" placeholder="Password" />
		</div>
		<button type="submit" class="submit-btn">Log in</button>
	</div>
	</form>
	<form  method="post" action="ConnexionAdmin">
	<div class="login slide-up">
		<div class="center">
			<h2 class="form-title" id="login"><span>or</span>Admin</h2>
			<div class="form-holder">
				<input type="text" name="username" class="input" placeholder="Email" />
				<input type="password" name="pass" class="input" placeholder="Password" />
			</div>
			<button type="submit" class="submit-btn">Log in</button>
		</div>
	</div>
	</form>
</div>
<!-- partial -->
  <script  src="./script.js"></script>

</body>
</html>
