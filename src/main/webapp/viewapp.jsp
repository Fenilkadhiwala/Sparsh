<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.entity.Appointment"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style type="text/css">
.myBtn {
	display: inline-block;
	padding: 8px 16px;
	border: 1px solid #ccc;
	background-color: lightgrey;
	color: white;
	text-decoration: none;
	cursor: pointer;
	color:black;
}

.myBtn:hover {
	color: black;
	background-color: white;
}

.myBtn:focus {
	outline: none;
}
</style>
</head>
<body>
	<br>
	<h3 class="text-center">Your Current Appointments</h3>
	<br>

	<table class="table table-hover table-bordered table-striped mt-2"
		id="myTable">
		<thead>
			<tr class="text-center">
				<th>Sr no.</th>
				<th>Appointment Reason</th>
				<th>Appointment Date</th>
				<th>Appointment Time</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody id="tableBody">
			<%
			HttpSession sess = request.getSession();

			AppointmentDAO my = new AppointmentDAO();

			List<Appointment> list = my.display();
			%>
			<%
			for (Appointment a : list) {
			%>
			<tr class="text-center">
				<td class="serial-number">1</td>
				<td><%=a.getAtype()%></td>
				<td><%=a.getAdate()%></td>
				<td><%=a.getAtime()%></td>
				<td>
					<button class="myBtn">Confirm</button>
					<button class="myBtn">Reject</button>

				</td>

			</tr>
			<%
			}
			%>

		</tbody>
	</table>

</body>
<script type="text/javascript">
	var table = document.getElementById("myTable");
	var tbody = table.getElementsByTagName("tbody")[0];

	// Get all the serial number cells in the table
	var serialNumberCells = tbody.getElementsByClassName("serial-number");

	// Loop through each serial number cell and update the number
	for (var i = 0; i < serialNumberCells.length; i++) {
		serialNumberCells[i].textContent = i + 1;
	}
</script>
</html>