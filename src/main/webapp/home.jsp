<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.vcube.dao.StudentDAO, com.vcube.model.Student, java.util.List" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>Home</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          rel="stylesheet">

    <style>

        body {
            background-color: #f4f7fb;
        }

        /* Navbar */
        .navbar {
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
        }

        .navbar-brand {
            font-size: 22px;
            font-weight: 600;
        }

        .nav-link {
            margin-left: 10px;
            transition: 0.3s;
        }

        .nav-link:hover {
            color: #0d6efd !important;
        }

        /* Welcome section */
        .welcome-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            margin-top: 40px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        }

        .welcome-title {
            font-weight: 600;
        }

        .username {
            color: #0d6efd;
            font-weight: 700;
        }

        /* Gallery / Logout */
        .top-buttons a {
            text-decoration: none;
            margin-right: 10px;
        }

        /* Student section */
        .student-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            margin-top: 25px;
            margin-bottom: 50px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        }

        .student-title {
            font-weight: 600;
        }

        /* Table */
        .table {
            vertical-align: middle;
        }

        .table thead th {
            white-space: nowrap;
        }

        .table tbody tr {
            transition: 0.2s;
        }

        .table tbody tr:hover {
            background-color: #f1f5ff;
        }

        .username-cell {
            color: #0d6efd;
            font-weight: 500;
        }

        /* Buttons */
        .btn {
            border-radius: 8px;
        }

        /* Footer */
        footer {
            margin-top: auto;
        }

        /* Mobile */
        @media (max-width: 576px) {

            .welcome-card {
                padding: 20px;
                margin-top: 25px;
            }

            .student-card {
                padding: 15px;
            }

            .welcome-title {
                font-size: 22px;
            }

            .top-buttons a {
                display: block;
                margin-bottom: 10px;
                margin-right: 0;
            }

        }

    </style>

</head>


<body class="d-flex flex-column min-vh-100">


<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container">

        <!-- Brand -->
        <a class="navbar-brand" href="#">
            <i class="bi bi-mortarboard-fill me-2"></i>
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
                    <a class="nav-link active" href="#">
                        <i class="bi bi-house-fill me-1"></i>
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


<!-- ================= MAIN CONTENT ================= -->

<div class="container">

    <!-- Welcome Card -->

    <div class="welcome-card">

        <div class="row align-items-center">

            <div class="col-md-8">

                <h2 class="welcome-title">

                    <i class="bi bi-person-circle text-primary me-2"></i>

                    Welcome :
                    
                    <span class="username">
                        <%= session.getAttribute("username") %>
                    </span>

                </h2>

                <p class="text-muted mb-0">
                    Welcome to the Student Management System.
                    Manage and view student details easily.
                </p>

            </div>


            <div class="col-md-4 text-md-end mt-3 mt-md-0">

                <div class="top-buttons">

                    <!-- Your existing link -->

                    <a href="./Gallery.jsp"
                       class="btn btn-outline-primary">

                        <i class="bi bi-images me-1"></i>
                        Gallery

                    </a>


                    <!-- Your existing logout -->

                    <a href="LogoutStudent"
                       class="btn btn-danger">

                        <i class="bi bi-box-arrow-right me-1"></i>
                        Logout

                    </a>

                </div>

            </div>

        </div>

    </div>


    <!-- ================= STUDENT SECTION ================= -->

    <div class="student-card">

        <div class="d-flex flex-column flex-md-row
                    justify-content-between
                    align-items-md-center mb-4">

            <div>

                <h3 class="student-title mb-1">

                    <i class="bi bi-people-fill text-primary me-2"></i>

                    Get All Students

                </h3>

                <p class="text-muted mb-0">
                    List of all registered students
                </p>

            </div>

            <span class="badge bg-primary mt-3 mt-md-0">
                Student Records
            </span>

        </div>


        <!-- ================= YOUR EXISTING DAO LOGIC ================= -->

        <%
            StudentDAO st = new StudentDAO();

            List<Student> list = st.getAllStudents();
        %>


        <!-- Responsive Table -->

        <div class="table-responsive">

            <table class="table table-hover table-bordered align-middle">

                <thead class="table-dark">

                    <tr>

                        <th>
                            <i class="bi bi-person me-1"></i>
                            First Name
                        </th>

                        <th>
                            Last Name
                        </th>

                        <th>
                            User Name
                        </th>

                        <th colspan="2"
                            class="text-center">
                            Action
                        </th>

                    </tr>

                </thead>


                <tbody>

                    <% for(Student s : list) { %>

                    <tr>

                        <td>
                            <%= s.getFname() %>
                        </td>

                        <td>
                            <%= s.getLname() %>
                        </td>

                        <td class="username-cell">

                            <i class="bi bi-at"></i>

                            <%= s.getUname() %>

                        </td>


                        <!-- Your existing Update button -->

                        <td class="text-center">

                            <button type="button"
                                    class="btn btn-primary btn-sm">

                                <i class="bi bi-pencil-square me-1"></i>

                                Update

                            </button>

                        </td>


                        <!-- Your existing Delete button -->

                        <td class="text-center">

                            <button type="button"
                                    class="btn btn-warning btn-sm">

                                <i class="bi bi-trash me-1"></i>

                                Delete

                            </button>

                        </td>

                    </tr>

                    <% } %>

                </tbody>

            </table>

        </div>

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