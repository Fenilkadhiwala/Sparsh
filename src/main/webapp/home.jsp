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
      * {
        margin: 0px;
        padding: 0px;
      }

      #mynav {
        background-color: transparent;
      }

      #myul li {
        margin: 0px 10px;
        font-size: 1.3rem;
      }

      body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
      }
      .sp {
        background-image: url("hos.jpg");
        background-size: cover;
        background-position: center;
        height: calc(100vh - 70px); /* subtract the height of the navbar */
        width: 100vw;
        position: relative;
      }

      .overlay {
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        background-color: rgba(
          0,
          0,
          0,
          0.6
        ); /* adjust the opacity as desired */
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        color: #fff;
      }
    </style>
  </head>

  <body>
    <nav class="navbar navbar-expand-sm navbar-light" id="mynav">
      <div class="container-fluid">
        <!-- <a class="navbar-brand " href="#">Navbar</a> -->
        <img src="sfinallogo.png" alt="" height="30px" width="140px" />
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div
          class="collapse navbar-collapse justify-content-end"
          id="navbarSupportedContent"
        >
          <ul class="navbar-nav" id="myul">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="doctor.jsp"
                >Doctor</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="patient.jsp"
                >Patient</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="reception.jsp"
                >Reception</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="sp">
      <div class="overlay">
        <h1>Sparsh Hospital</h1>
        <br>
        <br>
        <!-- <br /> -->
      </div>
    </div>

    
  </body>
</html>
    