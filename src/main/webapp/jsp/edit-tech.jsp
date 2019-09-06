<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,com.example.models.Courses"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<head>
<title>Add Course</title>
<link rel="Stylesheet" href="/styles/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body>


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"><img src="/images/page-icon.png"
			width="30" height="30" alt=""> Mentor On Demand</a>
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


	<form:form method="POST" action="/addtech" modelAttribute="course">
		<div>
			<h3 class="text-center" style="margin-top: 20px;">Add Course</h3>

			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="id" class="col-sm-2 col-form-label">Course Id
				</label>
				<div class="col-sm-3">
					<form:input type="text" path="courseid" class="form-control"
						id="id" readonly="true"/>
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="name" class="col-sm-2 col-form-label">Coursename
				</label>
				<div class="col-sm-3">
					<form:input type="text" path="courseName" class="form-control"
						id="name" />
				</div>
			</div>
			<div class="form-group row"
				style="margin-left: 690px; margin-top: 60px">
				<label for="rate" class="col-sm-2 col-form-label">Cost</label>
				<div class="col-sm-3">
					<form:input type="text" path="rate" class="form-control" id="rate" />
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