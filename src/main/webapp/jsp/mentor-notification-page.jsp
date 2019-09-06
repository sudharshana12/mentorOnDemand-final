<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,com.example.models.User" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<head>
<title>Mentor Notification Page</title>
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
				<li class="nav-item"><a class="nav-link" href="/listRequest">Notifications</a></li> &nbsp; &nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="#">Current Trainings</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="#">Completed Training</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="/updateSkills">Update Skills</a></li>

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
	<h2 class="text-center" style="margin-top: 50px">Students'
		Requests</h2>

	<%
		List studentlist = (List) request.getAttribute("studentList");
	%>
	<table class="managecmp-page-table" style="margin-top: 99px;">
		<tr>
			<th>Student Name</th>
			

		</tr>

		<%
			for (int i = 0; i < studentlist.size(); i++) {
			
		%>
		<tr>

			<td><%=studentlist.get(i)%></td>
			<td><button onclick="location.href='/requestAcceptAction?name=<%=studentlist.get(i)%>'"
					type="button">Accept Training</button></td>

			<td><button onclick="location.href='/requestIgnoreAction?name=<%=studentlist.get(i)%>'"
					type="button" class="btn btn-primary">Reject Training</button></td>


		</tr>
		<%
			}
		%>



		<div class="footer">
			<p class="footer-text">Mentor On Demand</p>
		</div>
</body>

</html>