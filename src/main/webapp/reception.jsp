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
	HttpSession sess1 = request.getSession();
	String message = (String) session.getAttribute("msg");
	if (message != null) {
		out.println("<script>alert('" + message + "')</script>");
		session.removeAttribute("message");
	}
	%>
	<div class="container my-5">
		<div class="row justify-content-center align-items-center">
			<div class="col-md-6 col-lg-5">
				<div class="card">
					<div class="card-body">
						<div class="text-center mb-4">
							<!-- <img src="lv1.png" alt="Hospital Logo" height="40px" width="140px"> -->
							<br> <br>
							<h3 class="card-title mt-3">Reception Login</h3>
							<%
							HttpSession sess = request.getSession();
							%>
							<%
							String errorMessage = (String) session.getAttribute("errorMessage");
							%>
							<%
							Long errorTimestamp = (Long) session.getAttribute("errorTimestamp");
							%>
							<%
							if (errorMessage != null && errorTimestamp != null && (System.currentTimeMillis() - errorTimestamp) < 1000) {
							%>
							<p style="color: red;"><%=errorMessage%></p>
							<%
							} else {
							%>
							<%
							session.removeAttribute("errorMessage");
							%>
							<%
							session.removeAttribute("errorTimestamp");
							%>
							<%
							}
							%>
							<%
							LocalDate currentDate = LocalDate.now();
							DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy");
							String formattedDate = currentDate.format(formatter);
							sess.setAttribute("dt", formattedDate);
							%>


						</div>
						<form method="post" action="ReceptionLogin">
							<div class="mb-3">
								<label for="username" class="form-label">Username</label> <input
									type="text" class="form-control" name="rname" id="username"
									required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" name="rpassword"
									id="password" required>
							</div>
							<div class="mb-3 form-check">
								<a href="receptionregister.jsp">Create an account</a> <br> <a
									href="">Forgot Password</a>
							</div>
							<button type="submit" class="btn btn-primary w-100">Log
								in</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
