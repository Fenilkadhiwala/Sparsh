<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap 5 Appointment Form</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container">
        <h2 class="text-center">Book Your Appointment</h2>
        <form method="post" action="BookAppointment">
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" name="aname" class="form-control" id="name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="aemail" class="form-control" id="email" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone:</label>
                <input type="tel" name="aphone" class="form-control" id="phone" required>
            </div>
            <div class="mb-3">
                <label for="disease" class="form-label">Select Disease/Condition:</label>
                <select name="atype" class="form-select" id="disease" required>
                    <option value="" selected disabled>Select a disease/condition</option>
                    <option value="Menstrual Disorders">Menstrual Disorders</option>
                    <option value="Pelvic Pain">Pelvic Pain</option>
                    <option value="Endometriosis">Endometriosis</option>
                    <option value="Polycystic Ovary Syndrome (PCOS)">Polycystic Ovary Syndrome (PCOS)</option>
                    <option value="Urinary Incontinence">Urinary Incontinence</option>
                    <option value="Sexually Transmitted Infections (STIs)">Sexually Transmitted Infections (STIs)</option>
                    <option value="Breast Health">Breast Health</option>
                    <option value="Cervical Health">Cervical Health</option>
                    <option value="Infertility">Infertility</option>
                    <option value="Menopause">Menopause</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="date" class="form-label">Date:</label>
                <input name="adate" type="date" class="form-control" id="date" required>
            </div>
            <div class="mb-3">
                <label for="time" class="form-label">Time:</label>
                <input name="atime" type="time" class="form-control" id="time" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message:</label>
                <textarea name="atext" class="form-control" id="message" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Add Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
