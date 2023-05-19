<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.time.LocalDate, java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page
	import="java.time.LocalDate, java.time.format.DateTimeFormatter"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
<style>
#mynav {
	background-color: rgb(247, 128, 167);
}
</style>
</head>
<body>
	<%-- Import the LocalDateTime and DateTimeFormatter classes --%>
	<%@ page
		import="java.time.LocalDateTime, java.time.format.DateTimeFormatter"%>

	<%-- Get the current date and time --%>
	<%
	LocalDateTime currentDateTime = LocalDateTime.now();
	%>

	<%-- Define the date format --%>
	<%
	DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("EEEE, MMMM dd, yyyy HH:mm:ss");
	%>

	<%-- Format the current date and time using the date format --%>
	<%
	String formattedDateTime = currentDateTime.format(dateFormat);
	%>

	<%-- Print the formatted date and time on the JSP page --%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form method="post" action="AddPatient">
					<h2 class="text-center mb-4">Add Patient</h2>
					<div class="mb-3">
						<label for="name" class="form-label">Patient's First Name</label>
						<input type="text" class="form-control" name="pfname" id="name"
							placeholder="Enter First name">
					</div>
					<div class="mb-3">
						<label for="name" class="form-label">Patient's Last Name</label> <input
							type="text" class="form-control" id="name" name="plname"
							placeholder="Enter Last name">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Patient's Email</label> <input
							type="email" class="form-control" id="email" name="pemail"
							placeholder="Enter your email">
					</div>
					<div class="mb-3">
						<label for="message" class="form-label">Patient's Contact</label>
						<input type="text" class="form-control" id="email" name="pphone"
							placeholder="Enter phone">

					</div>
					<input type="hidden" name="pdate" value="<%=formattedDateTime%>">
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
