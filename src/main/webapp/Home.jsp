<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	.wvd, .lgt {
		cursor: pointer;
	}
	.wvd {
		margin-left: 500px;
		margin-top: 20px;
	}
	.lgt {
		margin-left:516px;
		margin-top: 10px;
	}
</style>
<title>Welcome Page</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		
		if(session.getAttribute("username") == null)
			response.sendRedirect("Login.jsp");
	%>
	
	<h1>Welcome to Testing Servlet, Mr. ${username}</h1>
	
	<p> 
		To watch the Video, Click the Watch Video button
	</p>
	<form action="Video">
		<input type="submit" value="Watch Video" class="wvd">
	</form>	
	<form action="Logout">
		<input type="submit" value="Logout" class="lgt">
	</form>
	
</body>
</html>