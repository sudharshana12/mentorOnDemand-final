<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,com.example.models.RequestTable" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<head>
<title>User Notification Page</title>
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
				<li class="nav-item active"><a class="nav-link"
					href="/user-landing-page">Home <span class="sr-only">(current)</span></a>
				</li> &nbsp;&nbsp; &nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link" href="/user-landing-page">Search
						Trainings</a></li> &nbsp; &nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="#">Current Trainings</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="#">Completed Training</a></li> &nbsp;
				&nbsp;&nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="/updateProfile">Update Profile</a></li>
					&nbsp;&nbsp; &nbsp;
					<li class="nav-item"><a class="nav-link"
					href="/notificationsList">Notifications</a></li> &nbsp;
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
	<h2 class="text-center" style="margin-top: 50px">Students'
		Requests</h2>

	<%
		List<String> statuslist = (List)request.getAttribute("statuslist");
	    List list = (List) request.getAttribute("list");
	%>
	<table class="managecmp-page-table" style="margin-top:99px;">
		<tr>
			<th>Mentor Name</th>
			<th>Status</th>
		</tr>

		<%  
		   
		   
			for (int i = 0; i < list.size(); i++) {
				RequestTable rt = (RequestTable) list.get(i);
			
				
		%>
		<tr>

			<td><%=rt.getMentorName()%></td>
			<td><%=rt.getStatus()%></td>
			<% } %>
			
	</tr>
		 </table>
		<div class="footer">
			<p class="footer-text">Mentor On Demand</p>
		</div>
</body>

</html>