<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import ="model.*" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Travel Agency</title>
</head>
<link rel="stylesheet" href="login_signup.css">


<body>
 
<div class="login_container">

<form action="<%=request.getContextPath()%>/adminLoginServlet" method="post">

<h1 class="login_title">Admin Login</h1>
<h2 class="title">Login to your account</h2>

<label for="email">Admin Key: 

<input type = "text" id= "adminUserName" name="adminUserName" autofocus placeholder = "Key">

</label><br><br>

<label for ="pwd"> Password: 

<input type="password" id ="pwd" name="pwd" placeholder ="Password"><br><br>
<input type ="submit" class="button" value = "Login">
</label><br><br>

</form>


</div>



</body>
</html>