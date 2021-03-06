<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Write Note</title>

<style type="text/css">
h1 {
	color: #b9f542;
	display: inline-block;
	
}

input[name="notename"] {
	font-family: fantasy; 
	font-size : 15px;
	border-radius: 15px;
	border:2px solid white;
	padding: 10px;
	margin-bottom: 2%;
	width: 250px;
	font-size: 15px;
}

body {
	background-color: #60615e;
	background-image:url("book.jpg");
	
	background-size:cover;
}

#content {
	font-size: 15px;
	font-style: oblique;
	background-color: #dbd17f;
	border-radius: 15px;
	padding: 25px;
	margin-bottom: 2%;
	color: #626361;
}

a {
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
	text-decoration: none;
	border-radius: 15px;
	padding: 8px;
	background-color: #dbde18;
	color: #96177f;
	margin-left: 20px;
}

.sub {
	margin-left: 55px;
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #d8d8eb;
	margin-bottom: 2%;
	background-color: #508c0f;
	width: 150px;
	height: 35px;
	border-radius: 15px;
	border: 2px solid #508c0f;
}

.for {
	margin-left: 25%;
	padding: 2%;
}

.log {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #d8d8eb;
	background-color: #e60202;
	 width : 150px;
	 height : 35px; 
	border-radius: 15px; 
	border : 2px solid #e60202;
	position: absolute;
	top: 125px;
	right: 610px;
	width: 150px;
	height: 35px;	
}
.sess{
color:white;
font-size:25px;
position: absolute;
	top: 65px;
	right: 610px;
	width: 150px;
	height: 35px;
}

</style>

</head>
<body>
	<% if(session.getAttribute("username")==null){response.sendRedirect("NewLogin.html");} %>
	<form action="logout" method="get">
		<div>
		 
	<div class="sess">	Welcome @ <%= session.getAttribute("username") %></div>
			<input class="log" type="submit" name="logout" value="LogOut">
		</div>
	</form>

	<div class="for">
		<form action="writer" method="post">

			<h1>Write Your Note Here</h1>
			<div>
				<input type="text" name="notename" placeholder="Title Of Note" required>
			</div>
			<div>
				<textarea id="content" rows="20" cols="55" name="content" required></textarea>
			</div>
			<div>
				<input class="sub" type="submit" name="save" value="SAVE"> <a
					href="saved">Click here to view saved notes </a>
			</div>
		</form>
	</div>


</body>
</html>