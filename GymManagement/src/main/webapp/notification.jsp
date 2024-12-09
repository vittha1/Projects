<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/hedfoot.css">
</head>
<style>
  main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            background-image: url('./notify.png'); /* Add your image URL here */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        form h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 1.3rem;
            color: #555;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            border-color: #007bff;
        }

        .form-group textarea {
            resize: vertical;
            height: 100px;
        }

        /* Center the button */
        .form-group.button-group {
            display: flex;
            justify-content: center;
        }

        .form-group button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            form {
                padding: 20px;
                width: 90%;
            }
        }
</style>
<body>
<header>
    <nav class="navbar">
            <div class="logo">
                <a href="#home">
                    <img src="images/file.png" alt="Logo">
                </a>
            </div>
            <ul class="nav-links">
                <li><a href="AdminHome.jsp">Home</a></li>
                <li><a href="trainers.jsp">Trainers</a></li>
                <li><a href="users.jsp">Users</a></li>
                <li><a href="candidate.jsp">Candidates</a></li>
                <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("name")%>-Logout</a></li> 
            </ul>
        </nav>
</header>
<main>
        <form action="Notify" method="POST">
            <h2>Notifications</h2>

            <div class="form-group">
                <label for="username">Name:</label>
                <input type="text" id="username" name="username" placeholder="Enter candidate username" required>
            </div>

            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" placeholder="Enter your message" required></textarea>
            </div>

            <div class="form-group button-group">
                <button type="submit">Send Message</button>
            </div>
        </form>
    </main>
<footer>
        <div class="footer-container">
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p>Email: example@example.com</p>
                <p>Phone: 123-456-7890</p>
            </div>
            
            <div class="footer-section">
                <h3>Follow Us</h3>
                <ul class="social-media">
                    <li><a href="#"><img src="images/face.png" alt="Facebook"></a></li>
                    <li><a href="#"><img src="images/twit.png" alt="Twitter"></a></li>
                    <li><a href="#"><img src="images/insta.png" alt="Instagram"></a></li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>