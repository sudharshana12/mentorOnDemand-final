<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>User Registeration Page</title>
<style>
#datebox{

color: #000; !important

}
#op{
color: #000; !important
}

</style>
<link rel="Stylesheet" href="/styles/login-style.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
List<String> list = (List)request.getAttribute("tech");
System.out.println(list);


%>
	<div class="regiterationbox1">
		<h1 class="reg-heading">Registeration</h1>
		<form:form method="POST" action="/registerMentor"
			modelAttribute="mentor">
			<div class="form-row">
				<div class="form-group col-md-6">

					<p>Enter username</p>
					<form:input type="text" path="name" name="uname"
						placeholder="Enter username" required="required" />
					<div class="has-error">
						<form:errors path="name" class="text-danger" />
					</div>
				</div>
				<div class="form-group col-md-6">
					<p>Enter Password</p>
					<form:input type="password" path="password" name="password"
						placeholder="Enter password" required="required" />
					<div class="has-error">
						<form:errors path="password" class="text-danger" />
					</div>
				</div>

			</div>
			<div class="form-row">
				<div class="form-group col-md-6">


					<p>Enter EmailId</p>
					<form:input type="text" path="email" name="email"
						placeholder="Enter Email" required="required" />
					<div class="has-error">
						<form:errors path="email" class="text-danger" />
					</div>
				</div>
				<div class="form-group col-md-6">
					<p>Enter Mobile Number</p>
					<form:input type="text" path="mobileno" name="mobile"
						placeholder="Enter mobile number" required="required" />
					<div class="has-error">
						<form:errors path="mobileno" class="text-danger" />
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<p>Enter years of experience</p>
					<form:input type="text" path="exp" name="mobile"
						placeholder="Enter experience" required="required" />
					<div class="has-error">
						<form:errors path="exp" class="text-danger" />
					</div>
				</div>
				<div class="form-group col-md-6">
					<p>Enter years of timezone</p>
					<form:input type="text" path="timezone" name="mobile"
						placeholder="Enter timezone" required="required" />
					<div class="has-error">
						<form:errors path="timezone" class="text-danger" />
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<p>Linkedin URL</p>
					<form:input type="text" path="linkedin_URL" name="mobile"
						placeholder="Enter url" required="required" />
					<div class="has-error">
						<form:errors path="linkedin_URL" class="text-danger" />
					</div>
				</div>
				<div class="form-group col-md-6">
					<p>Enter facilities you provide</p>
					<form:input type="text" path="facilities" name="mobile"
						placeholder="Enter materials provided" required="required" />
					<div class="has-error">
						<form:errors path="facilities" class="text-danger" />
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<p>Enter list of technologies</p>
					<form:label path="technologies"/>
					<form:select path="technologies" id="op">
					<form:option value="NONE" label="select" id="op"/>
					<form:options items="${tech}" id="op"/>
					</form:select>
					<div class="has-error">
						<form:errors path="technologies" class="text-danger" />
					</div>
				</div>
				<div class="form-group col-md-6">
					<p>Number of Trainings given</p>
					<form:input type="text" path="numberOfTrainings" name="mobile"
						placeholder="Enter no of trainings" required="required" />
					<div class="has-error">
						<form:errors path="numberOfTrainings" class="text-danger" />
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<p>Enter AvailableDate</p>
					<form:input type="date" id="datebox" path="available_date" name="date"
						placeholder="Enter avaialble date" required="required" />
					<div class="has-error">
						<form:errors path="available_date" class="text-danger" />
					</div>
				</div>
				<div class="form-group col-md-6">
					<p>Self-Rating</p>
					<form:input type="text" path="rating" name="rate"
						placeholder="Enter self rating" required="required" />
					<div class="has-error">
						<form:errors path="rating" class="text-danger" />
					</div>
				</div>
			</div>

			<input type="submit" name="sumbit" value="Register">
			<a href="/loginUser">Already have an account?SignIn Here!</a>
		</form:form>
	</div>

</body>
</html>