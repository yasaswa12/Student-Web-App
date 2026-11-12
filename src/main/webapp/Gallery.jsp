<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <title>Gallery</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">

    <style>
        body {
            background: #f4f7fb;
            min-height: 100vh;
        }

        .navbar {
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
        }

        .welcome-card {
            max-width: 800px;
            margin: 100px auto;
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .welcome-icon {
            width: 80px;
            height: 80px;
            background: #0d6efd;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: auto;
            font-size: 35px;
        }

        .username {
            color: #0d6efd;
            font-weight: 600;
        }

        .logout-btn {
            border-radius: 10px;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand fw-bold" href="Gallery.jsp">
            <i class="bi bi-mortarboard-fill me-2"></i>
            Student Management
        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link active" href="Gallery.jsp">
                        <i class="bi bi-house-fill me-1"></i>
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="StudentList.jsp">
                        <i class="bi bi-people-fill me-1"></i>
                        Students
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

                <li class="nav-item ms-lg-2">
                    <a href="LogoutStudent"
                       class="btn btn-danger btn-sm logout-btn px-3">
                        <i class="bi bi-box-arrow-right me-1"></i>
                        Logout
                    </a>
                </li>

            </ul>

        </div>
    </div>
</nav>


<!-- Main Content -->

<div class="container">

    <div class="card welcome-card">

        <div class="card-body text-center p-5">

            <div class="welcome-icon mb-4">
                <i class="bi bi-person-fill"></i>
            </div>

            <h1 class="fw-bold mb-3">
                Welcome Back!
            </h1>

            <h4 class="text-muted mb-4">
                Welcome:
                <span class="username">
                    <%= session.getAttribute("username") %>
                </span>
            </h4>

            <p class="text-muted mb-4">
                Welcome to the Student Management System.
                You can manage and view student information from here.
            </p>

            <!-- Same destination -->
            <a href="./home.jsp"
               class="btn btn-primary btn-lg px-4">

                <i class="bi bi-people-fill me-2"></i>
                View Students

            </a>

        </div>

    </div>

</div>


<!-- Footer -->

<footer class="bg-dark text-white text-center py-3 mt-5">

    <small>
        © 2026 Student Management System | All Rights Reserved
    </small>

</footer>


<!-- Bootstrap JS -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>