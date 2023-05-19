
<%@page import="com.dao.PatientDAO"%>
<%@page import="com.entity.Patient"%>
<%@ page import="java.util.List"%>
<%
HttpSession session2 = request.getSession(false);
if (session2 == null || session2.getAttribute("isLoggedIn") == null) {
    response.sendRedirect("home.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
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
<style>
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
	
	<%
		HttpSession sess2=request.getSession();
		String rid = (String) session.getAttribute("rid");
		if (rid != null) {
			out.println("<script>alert('" + rid + "')</script>");
			session.removeAttribute("message");
		}
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<!-- <a class="navbar-brand" href="#">My Website</a>
         -->
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
							Receptionist </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Update Profile</a></li>
							<li>
								<hr class="dropdown-divider" />
							</li>
							<li><a class="dropdown-item" href="LogOut">Log Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<a href="addpatient.jsp" class="btn btn-primary mt-5"
		style="margin-left: 15px;">Add Patient</a>

	<input type="text" id="searchInput" class="form-control mb-3"
		style="width: 250px; margin-left: 1112px; border-radius: 8px;"
		placeholder="Search by name..." />
	<table class="table table-hover table-bordered table-striped" id="myTable">
		<thead>
			<tr class="text-center">
				<th>Sr no.</th>
				<th>Patient's First Name</th>
				<th>Patient's Last Name</th>
				<th>Patient Email</th>
				<th>Patient Contact</th>
				<th>Date</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody id="tableBody">
			<%
			HttpSession sess = request.getSession();

			PatientDAO my = new PatientDAO();
			
			List<Patient> list = my.display();
			%>
			<%
			for (Patient p : list) {
			%>
			<tr class="text-center">
				 <td class="serial-number">1</td>
				<td><%=p.getPfname()%></td>
				<td><%=p.getPlname()%></td>
				<td><%=p.getPemail()%></td>
				<td><%=p.getPphone()%></td>
				<td><%=p.getPdate() %></td>
				<td>
				
				<a href="updatepatient.jsp?pid=<%=p.getPid()%>"> <i class="fa-solid fa-pen-to-square" style="margin-right: 12px"></i></a> 
			    <a href="DeletePatient?pid=<%=p.getPid()%>"> <i class="fa-sharp fa-solid fa-trash"></i></a>		 
					
				</td>

			</tr>
			<%
			}
			%>

		</tbody>
	</table>
</body>
<script>
    const searchInput = document.getElementById("searchInput");
    const tableBody = document.getElementById("tableBody");
    const rows = tableBody.getElementsByTagName("tr");

    searchInput.addEventListener("keyup", () => {
      const filter = searchInput.value.toLowerCase();
      for (let i = 0; i < rows.length; i++) {
        const name = rows[i]
          .getElementsByTagName("td")[1]
          .textContent.toLowerCase();
        if (name.includes(filter)) {
          rows[i].style.display = "";
        } else {
          rows[i].style.display = "none";
        }
      }
    });
    
 // Get the table and its body
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
