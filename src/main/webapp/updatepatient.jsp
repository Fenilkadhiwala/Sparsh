<%@page import="com.dao.PatientDAO"%>
<%@page import="com.entity.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<%
	int id = Integer.parseInt(request.getParameter("pid"));
	
	
	PatientDAO myObj = new PatientDAO();
	Patient p = myObj.getById(id);
	%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form method="post" action="UpdatePatient">
					<h2 class="text-center mb-4">Update Patient</h2>
					<div class="mb-3">
						<label for="name" class="form-label">Patient's First Name</label>
						<input type="text" class="form-control" name="pfname" id="name"
							value="<%=p.getPfname()%>" placeholder="Enter First name">
					</div>
					<div class="mb-3">
						<label for="name" class="form-label">Patient's Last Name</label> <input
							type="text" class="form-control" id="name" name="plname"
							value="<%=p.getPlname()%>" placeholder="Enter Last name">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Patient's Email</label> <input
							type="email" class="form-control" id="email" name="pemail"
							value="<%=p.getPemail()%>" placeholder="Enter your email">
					</div>
					<div class="mb-3">
						<label for="message" class="form-label">Patient's Contact</label>
						<input type="text" class="form-control" id="email" name="pphone"
							value="<%=p.getPphone()%>" placeholder="Enter phone">
							
							<input name="pid" value="<%=id%>" type="hidden">

					</div>
					<button type="submit" class="btn btn-primary">Update</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
