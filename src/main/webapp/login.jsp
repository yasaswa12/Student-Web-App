<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Login Form</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

</head>


<body class="d-flex flex-column min-vh-100">


    <!-- ================= NAVBAR ================= -->

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <div class="container-fluid">

            <a class="navbar-brand" href="#">
                MyWebsite
            </a>


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

            <div class="collapse navbar-collapse"
                 id="navbarMenu">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Home
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            About
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Services
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Contact
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Gallery
                        </a>
                    </li>

                </ul>

            </div>

        </div>

    </nav>



    <!-- ================= LOGIN SECTION ================= -->

    <div class="container-fluid flex-grow-1 d-flex align-items-center">

        <div class="row w-100">


            <!-- 3 COLUMNS SPACE -->

            <div class="col-md-3">
          
            </div>



            <!-- 6 COLUMNS LOGIN FORM -->

            <div class="col-md-6">

                <div class="card shadow p-4">

                    <h2 class="text-center mb-3">
                        Login Form
                    </h2>


                    <form name="login"
                          method="post"
                          action="LoginController">


                        <!-- Username -->

                        <div class="mb-3">

                            <label for="uname"
                                   class="form-label">

                                Username

                            </label>

                            <input type="text"
                                   id="uname"
                                   name="uname"
                                   class="form-control"
                                   placeholder="Enter username"
                                   required>

                        </div>



                        <!-- Password -->

                        <div class="mb-3">

                            <label for="password"
                                   class="form-label">

                                Password

                            </label>

                            <input type="password"
                                   id="password"
                                   name="password"
                                   class="form-control"
                                   placeholder="Enter password"
                                   required>

                        </div>



                        <!-- Submit Button -->

                        <div class="d-grid">

                            <button type="submit"
                                    class="btn btn-primary">

                                Login

                            </button>
                            <a href="./index.jsp">New User ??</a>

                        </div>


                    </form>

                </div>

            </div>



            <!-- 3 COLUMNS SPACE -->

            <div class="col-md-3"></div>


        </div>

    </div>



    <!-- ================= FOOTER ================= -->

    <footer class="bg-dark text-white text-center py-3">

        <p class="mb-0">
            &copy; 2026 MyWebsite. All Rights Reserved.
        </p>

    </footer>



    <!-- Bootstrap 5 JavaScript -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>