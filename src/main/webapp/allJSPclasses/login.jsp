<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- <%@page import ="model.*" %> --%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Travel Agency</title>
</head>
<link rel="stylesheet" href="login_signup.css">


<body>


<div class="login_container">

<form action="<%=request.getContextPath()%>/loginServlet" method="post">

<h1 class="login_title">Travel Agency</h1>
<h2 class="title">Login to your account</h2>

<label for="email">Email:

<input type = "text" id= "email" name="email" autofocus placeholder = "Email">

</label><br><br>

<label for ="pwd"> Password:

<input type="password" id ="pwd" name="pwd" placeholder ="Password"><br><br>
<input type ="submit" class="button" value = "Login">

</label><br><br>
</form>
<div>
<%
String error = (String)request.getAttribute("errorMessage");
if(error!=null){%>
<h2>Invalid email or password!</h2>

  <%} %>
</div>

<a href="signUp.jsp" class ="form_link">Don't have an account? Create account</a>

</div>



</body>
</html>
