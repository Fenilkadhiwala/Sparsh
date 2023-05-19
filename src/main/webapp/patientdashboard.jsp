<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
.carousel-caption-left {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translateY(-50%);
}

.carousel-caption-middle {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.table tr:nth-child(even) {
	background-color: #f8f9fa;
	/* Light gray background for even rows */
}

.table tr:nth-child(odd) {
	background-color: #e9ecef;
	/* Lighter gray background for odd rows */
}

.table tr:hover {
	background-color: #d1d7dc;
	/* Darker gray background on hover */
}

nav li {
	margin: 0px 8px;
	font-size: 1.1rem;
}

.contact-container {
	background-image: url("b6.jpg");
	background-size: cover;
	background-position: center;
	padding: 50px;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.footer {
	background-color: #f8f9fa;
	padding: 20px;
	text-align: center;
}

.social-icons {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.social-icons li {
	display: inline-block;
	margin-right: 10px;
}

.social-icons li:last-child {
	margin-right: 0;
}

.social-icons a {
	color: #333;
	font-size: 18px;
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
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container-fluid">
			<!-- Navbar brand/logo -->
			<img src="sfinallogo.png" alt="" height="30px" width="130px" />

			<!-- Toggle button for mobile devices -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar items -->
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav" style="padding: 0px 18px">
					<li class="nav-item"><a class="nav-link active" href="#">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#about">About</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#services">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Admin </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="apphistory.jsp">History</a></li>
								<li><a class="dropdown-item" href="#">Update Profile</a></li>
								<li>
									<hr class="dropdown-divider" />
								</li>
								<li><a class="dropdown-item" href="LogOut">Log
										Out</a></li>
							</ul></li>
					</ul>
				</ul>
			</div>
		</div>
	</nav>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
				class="active"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
			<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="b3.jpeg" class="d-block w-100" alt="Image 1"
					style="filter: brightness(0.5)" height="500px" />
				<div class="carousel-caption carousel-caption-left"
					style="margin-right: 600px; margin-top: 20px">
					<h1 style="font-size: 2.9rem">Sparsh</h1>
					<p>Your Care Is Our Dream</p>
					<a class="btn bg-primary" style="color: white; font-weight: bold"
						href="appointment.jsp">Book An Appointment</a>
				</div>
				<div class="carousel-caption carousel-caption-middle">
					<!-- <h3>Middle Caption</h3> -->
					<!-- <p>Some text in the middle</p> -->
				</div>
			</div>
			<div class="carousel-item">
				<img src="b2.jpg" class="d-block w-100" alt="Image 2"
					style="filter: brightness(0.5)" height="500px" />
				<div class="carousel-caption carousel-caption-left"
					style="margin-right: 600px; margin-top: 20px">
					<h1 style="font-size: 3.5rem">Sparsh</h1>
					<p>Your Care Is Our Dream</p>
					<a class="btn bg-primary" style="color: white; font-weight: bold"
						href="appointment.jsp">Book An Appointment</a>
				</div>
				<div class="carousel-caption carousel-caption-middle">
					<!-- <h3>Middle Caption</h3> -->
					<!-- <p>Some text in the middle</p> -->
				</div>
			</div>
			<div class="carousel-item">
				<img src="b1.jpg" class="d-block w-100" alt="Image 3"
					style="filter: brightness(0.5)" height="500px" />
				<div class="carousel-caption carousel-caption-left"
					style="margin-right: 600px; margin-top: 20px">
					<h1 style="font-size: 2.9rem">Sparsh</h1>
					<p>Your Care Is Our Dream</p>
					<a class="btn bg-primary" style="color: white; font-weight: bold"
						href="appointment.jsp">Book An Appointment</a>
				</div>
				<div class="carousel-caption carousel-caption-middle">
					<!-- <h3>Middle Caption</h3> -->
					<!-- <p>Some text in the middle</p> -->
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-bs-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-bs-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
		</a>
	</div>

	<div class="container mt-5" id="about">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<img src="b1.jpg" class="card-img-top rounded-circle" alt="Image 1" />
					<div class="card-body text-center">
						<h5 class="card-title">Dr. Chetan Patel</h5>
						<p class="card-text">MBBS,MS</p>
						<a href="#" class="btn btn-primary">View More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="b2.jpg" class="card-img-top rounded-circle" alt="Image 2" />
					<div class="card-body text-center">
						<h5 class="card-title">Fenil</h5>
						<p class="card-text">MBBS</p>
						<a href="#" class="btn btn-primary">View More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="b3.jpeg" class="card-img-top rounded-circle"
						alt="Image 3" height="235px" />
					<div class="card-body text-center">
						<h5 class="card-title">Krish Patel</h5>
						<p class="card-text">MS</p>
						<a href="#" class="btn btn-primary">View More</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container mt-5" id="services">
		<div class="row">
			<div class="col mt-5">
				<img src="b4.jpg" alt="" />
			</div>
			<div class="col">
				<h2 class="mt-5 text-center">Our Services</h2>
				<ul class="list-group mt-4">
					<li class="list-group-item">
						<h4>General Gynecology:</h4>
						<p>Our gynecologists specialize in general gynecological care,
							focusing on preventive measures, routine screenings, and early
							detection of any underlying conditions.</p>
					</li>
					<li class="list-group-item">
						<h4>Obstetric Care:</h4>
						<p>Pregnancy is an exciting journey, and we are here to
							provide comprehensive obstetric care to support you every step of
							the way.</p>
					</li>
					<li class="list-group-item">
						<h4>Menopause Management:</h4>
						<p>Navigating menopause can bring a variety of physical and
							emotional changes. Our gynecologists offer specialized care and
							treatments.</p>
					</li>
					<li class="list-group-item">
						<h4>Reproductive Health:</h4>
						<p>For women planning to start or expand their families, we
							provide a range of services to optimize reproductive health.</p>
					</li>
					<li class="list-group-item">
						<h4>Gynecologic Surgery:</h4>
						<p>When surgical intervention is necessary, our skilled
							gynecologic surgeons utilize advanced techniques to perform a
							wide array of procedures.</p>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="contact-container" id="contact">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<h3 class="card-title text-center">Contact Us</h3>
							<form>
								<div class="mb-3">
									<label for="name" class="form-label">Name</label> <input
										type="text" class="form-control" id="name"
										placeholder="Enter your name" required />
								</div>
								<div class="mb-3">
									<label for="email" class="form-label">Email</label> <input
										type="email" class="form-control" id="email"
										placeholder="Enter your email" required />
								</div>
								<div class="mb-3">
									<label for="message" class="form-label">Message</label>
									<textarea class="form-control" id="message" rows="5"
										placeholder="Enter your message" required></textarea>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer mt-5">
		<div class="container">
			<ul class="social-icons">
				<li><a href="#"><i class="fab fa-facebook"></i></a></li>
				<li><a href="#"><i class="fab fa-twitter"></i></a></li>
				<li><a href="#"><i class="fab fa-instagram"></i></a></li>
				<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
			</ul>
			<p>&copy; 2023 Sparsh Hospital. All rights reserved.</p>
		</div>
	</footer>
</body>

</html>