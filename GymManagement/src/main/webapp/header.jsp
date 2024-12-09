<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= request.getAttribute("title") != null ? request.getAttribute("title") : "Dashboard" %></title>
    <link rel="stylesheet" href="css/hedfoot.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem;
            background-color: #333;
            color: white;
        }

        .navbar .logo img {
            width: 50px;
        }

        .nav-links {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            margin-left: 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        .toggle-menu {
            display: none;
            font-size: 30px;
            cursor: pointer;
        }

        @media screen and (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .toggle-menu {
                display: block;
            }
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo">
                <a href="index.jsp">
                    <img src="images/file.png" alt="Logo">
                </a>
            </div>
            <span class="toggle-menu">&#9776;</span>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li style="text-transform: uppercase;">
                    <a href="logout"><%=session.getAttribute("firstname")%>-Logout</a>
                </li>
            </ul>
        </nav>
    </header>

    <script>
        // Toggle menu for mobile view
        document.querySelector('.toggle-menu').addEventListener('click', function() {
            const navLinks = document.querySelector('.nav-links');
            if (navLinks.style.display === 'none' || navLinks.style.display === '') {
                navLinks.style.display = 'flex';
            } else {
                navLinks.style.display = 'none';
            }
        });
    </script>
</body>
</html>
