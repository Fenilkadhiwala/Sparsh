<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Bootstrap</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
      integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
      crossorigin="anonymous"
    ></script>
    <style>
      #mynav {
        background-color: rgb(247, 128, 167);
      }
    </style>
  </head>
  <body>
    <div class="container my-5">
        <div class="row justify-content-center align-items-center">
          <div class="col-md-6 col-lg-5">
            <div class="card">
              <div class="card-body">
                <div class="text-center mb-4">
                  <!-- <img src="lv1.png" alt="Hospital Logo" height="40px" width="140px"> -->
                  <br><br>
                  <h3 class="card-title mt-3">Patient Login</h3>
                </div>
                <form action="PatientLogin" method="post">
                  <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" name="pname" id="username" required>
                  </div>
                  <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="ppassword" id="password" required>
                  </div>
                  <div class="mb-3 form-check">
                    <a href="patientregister.jsp">Create an account</a>
                    <br>
                    <a href="">Forgot Password</a>
                  </div>
                  <button type="submit" class="btn btn-primary w-100">Log in</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
        
  </body>
</html>
    