<%@page import="com.dao.ScheduleDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.PatientDAO"%>
<%@page import="com.entity.Schedule"%>
<%@ page import="java.util.List"%>
<%
HttpSession session2 = request.getSession(false);
if (session2 == null || session2.getAttribute("isLoggedIn") == null) {
    response.sendRedirect("home.jsp");
}
%>

<%@ page
	import="java.time.LocalDate, java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dashboard</title>
<link rel="stylesheet" href="styledash.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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

<style type="text/css">
.button {
	display: inline-block;
	padding: 8px 16px;
	border: 1px solid #ccc;
	background-color: rgb(52, 170, 216);
	color: white;
	text-decoration: none;
	cursor: pointer;
	margin-left: 970px;
}

.button:hover {
	color: black;
	background-color: #e0e0e0;
}

.button:focus {
	outline: none;
}

.btn3 {
	display: inline-block;
	border: 1px solid #ccc;
	background-color: lightgrey;
	padding:5px 10px;
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.btn3:hover {
	color: black;
	background-color: white;
}

.btn3:focus {
	outline: none;
}

.button1 {
	display: inline-block;
	padding: 8px 16px;
	border: 1px solid #ccc;
	background-color: rgb(52, 170, 216);
	color: white;
	text-decoration: none;
	cursor: pointer;
	margin-left: 20px;
}

.button1:hover {
	color: black;
	background-color: #e0e0e0;
}

.button1:focus {
	outline: none;
}
</style>
</head>
<body>
	<%
	HttpSession sess1 = request.getSession();
	String message = (String) session.getAttribute("msg");
	if (message != null) {
		out.println("<script>alert('" + message + "')</script>");
		session.removeAttribute("message");
	}
	
	
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<img src="sfinallogo.png" alt="" height="30px" width="130px" />
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Doctor </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item" href="#">Update Profile</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="LogOut">Log Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container1">
		<div class="dates">
			<h2>Welcome ${doctorname}!</h2>
			<p style="margin-top: 5px; margin-left: 3px">${dt}</p>
		</div>
		<div class="btns">
			<a class="button" href="viewapp.jsp">View Appointments</a>
		</div>
	</div>

	<div class="container2" style="font-weight: bolder; margin-left: 7px;">"Empowering women through compassionate
		care."</div>

	<br>
	<br>

	<a class="button1" href="schedule.jsp">Add Schedule</a>

	<br>
	<br>

	<table class="table table-hover table-bordered table-striped mt-2"
		id="myTable">
		<thead>
			<tr class="text-center">
				<th>Sr no.</th>
				<th>Scheduled Work</th>
				<th>Scheduled Date</th>
				<th>Scheduled Time</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody id="tableBody">
			<%
			HttpSession sess = request.getSession();

			ScheduleDAO my = new ScheduleDAO();

			List<Schedule> list = my.display();
			%>
			<%
			for (Schedule s : list) {
			%>
			<tr class="text-center">
				<td class="serial-number">1</td>
				<td><%=s.getStype()%></td>
				<td><%=s.getSdate()%></td>
				<td><%=s.getStime()%></td>
				<td><a class="btn3" href="DeleteSchedule?sid=<%=s.getSid()%>">Done</a> </td>

			</tr>
			<%
			}
			%>

		</tbody>
	</table>



</body>



</html>
