<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*,com.example.models.User"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<head>
<title>Update Profile</title>
<link rel="Stylesheet" href="/styles/style.css">
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
	<%
		User user = (User) request.getAttribute("user");
	%>
	<form:form method="POST" action="/updateProfile" modelAttribute="user">
		<div>
			<h3 class="text-center" style="margin-top: 20px;">Update Profile</h3>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="user-id" class="col-sm-2 col-form-label">User Id
				</label>
				<div class="col-sm-3">
					<form:input type="text" path="id" class="form-control" id="user-id"
						value="<%=user.getId()%>" readonly="true" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="name" class="col-sm-2 col-form-label">Username </label>
				<div class="col-sm-3">
					<form:input type="text" path="name" class="form-control"
						id="name" value="<%=user.getName()%>" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="email" class="col-sm-2 col-form-label">Email </label>
				<div class="col-sm-3">
					<form:input type="text" path="email" class="form-control"
						id="email" value="<%=user.getEmail()%>" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="mob" class="col-sm-2 col-form-label"> Mobile
					Number</label>
				<div class="col-sm-3">
					<form:input type="text" path="mobileno" class="form-control"
						id="mob" value="<%=user.getMobileno()%>" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="pass" class="col-sm-2 col-form-label">Change
					Password </label>
				<div class="col-sm-3">
					<form:input type="text" path="password" class="form-control"
						id="pass" value="<%=user.getPassword()%>" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-10" style="margin-left: 900px; margin-top: 70px;">
					<button type="submit" class="btn btn-primary">Save</button>
				</div>
			</div>
		</div>
	</form:form>
	<div class="footer">
		<p class="footer-text">Mentor On Demand</p>
	</div>
</body>

</html>