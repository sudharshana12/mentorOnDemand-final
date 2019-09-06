<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,com.example.models.User" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<head>
<title>Admin Block Page</title>
<link rel="Stylesheet" href="/styles/style.css">
<link rel="Stylesheet" href="/styles/style1.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"><img src="/images/page-icon.png"
			width="50" height="50" alt=""> Mentor On Demand</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				
				<li class="nav-item"><a class="nav-link"
					href="/blockUser">Block User/Mentor</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="/addtech">Add Technology</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="/viewtech">View Technologies</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				

			</ul>
		</div>
		<div>
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/loginUser">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="page-body">
		
	</div>
	<h2 class="text-center" style="margin-top: 50px">Users
		</h2>
	<%
		List userlist = (List) request.getAttribute("userlist");
	%>
	<table class="managecmp-page-table" style="margin-top: 99px;">
		<tr>
			<th>UserName</th>
			<th>UserId</th>
			<th>UserType</th>
			
			

		</tr>

		<%
			for (int i = 0; i < userlist.size(); i++) {
				User user = (User)userlist.get(i);
			
		%>
		<tr>

			<td><%=user.getName()%></td>
			<td><%=user.getId()%></td>
			<td><%=user.getUserType()%></td>
			
			<% if((user.getBlockStatus()).equals("unblocked"))
				{
				%>
			<td><button onclick="location.href='/blockAction?id=<%=user.getId()%>'"
					type="button"class="btn btn-primary" >Block</button></td>
					<% }
			else
			{ %>
           
			<td><button onclick="location.href='/unblockAction?id=<%=user.getId()%>'"
					type="button" class="btn btn-primary">Unblock</button></td>
            <% } %>

		</tr>
		<%
			}
		%>
	
		<div class="footer">
			<p class="footer-text">Stock Exchange</p>
		</div>
</body>

</html>