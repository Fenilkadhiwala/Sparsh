<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>
    <style>
        #mynav {
            background-color: rgb(247, 128, 167);
        }
    </style>
</head>

<body>
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title text-center mb-4">Create an account</h5>
                        <form method="post" action="DoctorRegister">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" name="dname" id="name" required />
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email address</label>
                                <input type="email" class="form-control" name="demail" id="email" aria-describedby="emailHelp"
                                    required />
                                <div id="emailHelp" class="form-text">
                                    We'll never share your email with anyone else.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone number</label>
                                <input type="tel" class="form-control" name="dphone" id="phone" required />
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" id="pass" name="dpassword" class="form-control" id="password" required />
                            </div>
                            <div class="mb-3">
                                <label for="confirm-password" class="form-label">Confirm password</label>
                                <input type="password" id="confpass" class="form-control" id="confirm-password"
                                    required />
                            </div>
                            <div class="invalid-feedback" id="password-mismatch-msg">
                                Passwords do not match
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="terms-and-conditions" required />
                                <label class="form-check-label" for="terms-and-conditions">I agree to the terms and
                                    conditions</label>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">
                                Create account
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    const password = document.getElementById("pass");
    const confirmPassword = document.getElementById("confpass");
    const passwordMismatchMsg = document.getElementById(
        "password-mismatch-msg"
    );

    confirmPassword.addEventListener("input", () => {
        if (password.value !== confirmPassword.value) {
            confirmPassword.setCustomValidity("Passwords do not match");
            passwordMismatchMsg.style.display = "block";
        } else {
            confirmPassword.setCustomValidity("");
            passwordMismatchMsg.style.display = "none";
        }
    });
</script>

</html>