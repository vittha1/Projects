<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ChatBot</title>
    <link rel="stylesheet" href="css/chat.css"/>
</head>
<style>
body {
    background-image: url('images/back1.gif'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}


</style>
<body>
<header>
    <nav class="navbar">
        <div class="logo">
            <a href="index.jsp">
                <img src="images/mainlogo.jpeg" alt="Logo">
            </a>
        </div>
         <ul class="nav-links">
                <li><a href="Uhome.jsp">Home</a></li>
                <li><a href="allplans.jsp">All Plans</a></li>
                <li><a href="myplans.jsp">My Plans</a></li>
                <li><a href="mydiet.jsp">My Diet</a></li>
                <li><a href="myworkout.jsp">My Workout</a></li>
                <li><a href="chatbot.jsp">ChatBoat</a></li>
                <li><a href="messages.jsp">Notifications</a></li>
                <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("firstname")%>-Logout</a></li> 
            </ul>
    </nav>
</header>

<main>
   
    <div class="chat-container">
     <h2 style="text-align: center; color:black;">ChatBot</h2>
        <div class="chat-box" id="chatBox">
            <!-- Chat messages will be displayed here -->
            <%
                // Retrieve the messages from the session
                java.util.List<String> messages = (java.util.List<String>) session.getAttribute("messages");
                if (messages != null) {
                    for (String message : messages) {
                        out.println(message);
                    }
                }
            %>
        </div>

        <form method="POST" action="chatbot" class="input-container">
            <input type="text" name="userQuestion" class="user-input" placeholder="Ask a question..." required />
            <button type="submit" class="send-btn">Send</button>
        </form>

        <form method="POST" action="clearChat" class="clear-container">
            <button type="submit" class="clear-btn">Clear Chat</button>
        </form>
    </div>
</main>

<footer>
    <div class="footer-container">
        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="Uhome.jsp">Home</a></li>
                <li><a href="#">Services</a></li>
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
