<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Registration Form</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>

    <!-- ================= NAVBAR ================= -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <div class="container-fluid">

            <a class="navbar-brand" href="#">MyWebsite</a>

            <!-- Navbar Toggler -->
            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarMenu"
                    aria-controls="navbarMenu"
                    aria-expanded="false"
                    aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>

            </button>

            <!-- Navbar Menu -->
            <div class="collapse navbar-collapse" id="navbarMenu">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Gallery</a>
                    </li>

                </ul>

            </div>

        </div>

    </nav>


    <!-- ================= FLUID CONTAINER ================= -->

    <div class="container-fluid mt-5">

        <div class="row">

            <!-- 3 COLUMNS SPACE -->
            <div class="col-md-3"></div>


            <!-- 6 COLUMNS FORM -->
            <div class="col-md-6">

                <div class="card shadow p-4">

                    <h2 class="text-center mb-4">
                        Registration Form
                    </h2>

                    <form name="registration" method="post" action="Studentcontroller">

                        <!-- First Name -->
                        <div class="mb-3">

                            <label for="fname" class="form-label">
                                First Name
                            </label>

                            <input type="text" name="fname"
                                   id="fname"
                                   class="form-control"
                                   placeholder="Enter first name">

                        </div>


                        <!-- Last Name -->
                        <div class="mb-3">

                            <label for="lname" class="form-label" >
                                Last Name
                            </label>

                            <input type="text"
                                   id="lname"
                                   name="lname"
                                   class="form-control"
                                   placeholder="Enter last name">

                        </div>


                        <!-- Username -->
                        <div class="mb-3">

                            <label for="uname" class="form-label">
                                Username
                            </label>

                            <input type="text"
                                   id="uname"
                                   class="form-control"
                                   placeholder="Enter username"
                                   name="uname">

                        </div>


                        <!-- Password -->
                        <div class="mb-3">

                            <label for="password" class="form-label">
                                Password
                            </label>

                            <input type="password"
                                   id="password"
                                   class="form-control"
                                   placeholder="Enter password"
                                   name="password">

                        </div>


                        <!-- Confirm Password -->
                        <div class="mb-3">

                            <label for="confirmPassword" class="form-label">
                                Confirm Password
                            </label>

                            <input type="password"
                                   id="confirmPassword"
                                   class="form-control"
                                   placeholder="Confirm password"
                                   name="confirmPassword">

                        </div>


                        <!-- Submit Button -->
                        <div class="d-grid">

                            <button type="submit"
                                    class="btn btn-primary">
                                Submit
                            </button>
                            <a href="./login.jsp">Already Registered ??</a>

                        </div>

                    </form>

                </div>

            </div>


            <!-- 3 COLUMNS SPACE -->
            <div class="col-md-3"></div>

        </div>

    </div>


    <!-- ================= FOOTER ================= -->

    <footer class="bg-dark text-white text-center mt-5 p-4">

        <p class="mb-0">
            &copy; 2026 MyWebsite. All Rights Reserved.
        </p>

    </footer>


    <!-- Bootstrap 5 JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>