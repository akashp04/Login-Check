<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<style>
	.ytv{
		margin-left: 300px;
	}
	.frm{
		margin-left: 550px;
		margin-top:50px;
		
	}
	.cls{
		cursor: pointer;
	}
</style>


<title>Video</title>
</head>
<body>

	<%
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

	%>
	
	<h1>Hi, You've reached the video page</h1>
	
	<iframe width="560" height="315" class="ytv" src="https://www.youtube.com/embed/WXmTxgDg52o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	
	
	
	
	<form class="frm" action="Logout">
		<input type="submit" value="Logout" class="cls">
	</form>
	
</body>
</html>