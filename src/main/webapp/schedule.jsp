<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap 5 Appointment Form</title>
<!-- Add Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
</head>
<body>
	<div class="container">
		<h2 class="text-center">Add Schedule</h2>
		<form method="post" action="AddSchedule">

			<div class="mb-3">
				<label for="disease" class="form-label">Select
					Disease/Condition:</label> 
					<select name="stype">
					<option value="routineCheckup">Routine check-up</option>
					<option value="papSmear">Pap smear</option>
					<option value="breastExam">Breast examination</option>
					<option value="pelvicExam">Pelvic exam</option>
					<option value="contraceptiveCounseling">Contraceptive
						counseling</option>
					<option value="pregnancyConfirmation">Pregnancy
						confirmation</option>
					<option value="prenatalCare">Prenatal care</option>
					<option value="ultrasoundExam">Ultrasound examination</option>
					<option value="colposcopy">Colposcopy</option>
					<option value="hysteroscopy">Hysteroscopy</option>
					<option value="endometrialBiopsy">Endometrial biopsy</option>
					<option value="infertilityEvaluation">Infertility
						evaluation</option>
					<option value="menopauseManagement">Menopause management</option>
					<option value="stiTreatment">Treatment of sexually
						transmitted infections (STIs)</option>
					<option value="pelvicFloorEvaluation">Pelvic floor
						disorder evaluation</option>
					<option value="abnormalBleedingTreatment">Treatment of
						abnormal uterine bleeding</option>
					<option value="leepProcedure">LEEP (Loop Electrosurgical
						Excision Procedure)</option>
					<option value="vulvarBiopsy">Vulvar biopsy</option>
					<option value="iudProcedure">IUD (Intrauterine Device)
						insertion or removal</option>
					<option value="essureProcedure">Essure procedure
						(permanent birth control)</option>
				</select>

			</div>

			<div class="mb-3">
				<label for="date" class="form-label">Date:</label> <input
					name="sdate" type="date" class="form-control" id="date" required>
			</div>
			<div class="mb-3">
				<label for="time" class="form-label">Time:</label> <input
					name="stime" type="time" class="form-control" id="time" required>
			</div>
			<div class="mb-3">
				<label for="message" class="form-label">Important Message:</label>
				<textarea name="stext" class="form-control" id="message" rows="3"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<!-- Add Bootstrap JS (optional) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
