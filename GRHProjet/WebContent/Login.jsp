<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:600'><link rel="stylesheet" href="./style.css">
    <link rel="icon" type="image/png"
	href="images/images4/icons/GRH.png" />
</head>
<body>
<!-- partial:index.partial.html -->
<div class="login-wrap" style="background-image:url(images/PLOGINN.jpg);">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Employe</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Admin</label>
		<div class="login-form">
			<div class="sign-in-htm">
			 <form  method="post" action="connexionEm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="nomEmploye" type="text" class="input" required>
				</div>
				<div class="group">
					<label for="user" class="label">Email</label>
					<input id="user" name="emailEmploye" type="email" class="input" required>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass"  name="mdpEmploye" type="password" class="input" data-type="password" required>
				</div>
				<div class="group">
					<c:if test="${test1==1}">
					<div class="container-login100-form-btn m-t-32">
					<strong style="color : #F6323E "> ${e1} </strong>
					</div>
					</c:if>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Log in">
				</div>
				<div class="hr"></div>
				
				</form>
			</div>
			<div class="sign-up-htm">
			<form  method="post" action="ConnexionAdmin">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="loginAdmin" type="text" class="input" required>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="mdpAdmin" type="password" class="input" data-type="password" required>
				</div>
				<div class="group">
					<c:if test="${testA==1}">
					<div class="container-login100-form-btn m-t-32">
					<strong style="color : #F6323E "> ${eA} </strong>
					</div>
					</c:if>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Log in">
				</div>
				
				<div class="hr"></div>
				
				</form>
			</div>
		</div>
	</div>
</div>
<!-- partial -->
  
</body>
</html>
