<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration</title>
</head>
<link rel="stylesheet" href="login_signup.css">

<body>

<div class="input_container">

<h1 class="signup_title">Create a new account</h1>

<form action="<%=request.getContextPath()%>/signUpServlet" method="post">

<label for= "first_name"> First name: 
<input type ="text" id= "first_name" name="firstName">
</label>
<label for= "last_name"> Last name: 
<input type ="text" id= "last_name" name="lastName">
</label><br><br>

<label for= "phone"> Phone-Number: 
<input type ="text" id= "phone" name="phone_number">
</label><br><br>
<label for= "email"> Email: 
<input type ="text" id="email" name= "email">

<%-- <% String email = (String)session.getAttribute("email");
System.out.println(email);
/* if(email.equals("available")){
	out.print("available");
} */

%> --%>
<%-- <% String email = "";
email = (String ) session.getAttribute("email");%>
<% if(email.equals("available")){%>
<!-- <div class="emailError" style="color:green">available</div> -->
<p style="color:green"> available
<%} else {%>
<div class="emailError" style="color:red"> not available </div>
<%}%> --%>
</label><br><br>

<label for= "password"> Password: 
<input type="password" id= "password" name="password">
</label><br><br>

<label for ="user_type">Choose user type</label>
<select id="user_type" name="userType">
<option value="User"> User</option>
<option value="Admin"> Admin</option>
</select><br><br>

<input class = "submit" type="submit" value="Submit" />

</form>

<form action="login.jsp">
			<input class = "already" type="submit" value="Already Registered? LOGIN here!" />
		</form>

</div>

</body>
</html>