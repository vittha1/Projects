<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/headfoot.css">
</head>
<style>
.chat-container {
    height: auto;
    max-width: 600px;
    margin: 50px auto;
    background-color: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
}

.chat-box {
    height: auto;
    overflow-y: auto;
    border: 1px solid #ccc;
    padding: 10px;
    background-color: #f9f9f9;
    border-radius: 5px;
    margin-bottom: 10px;
}

.chat-message {
    margin-bottom: 10px;
    font-size: 1rem;
}

.user-message {
    text-align: right;
    color: blue;
}

.bot-message {
    text-align: left;
    color: green;
}

.bot-image {
    display: block;
    margin: 10px auto;
    max-width: 100%;
}

.input-container {
    display: flex;
    justify-content: space-between;
    gap: 10px;
}

.user-input {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

.send-btn {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.send-btn:hover {
    background-color: #45a049;
}

.clear-container {
    text-align: center;
    margin-top: 10px;
}

.clear-btn {
    background-color: #FF5722; 
    color: white; 
    border: none; 
    padding: 10px 20px; 
    border-radius: 5px; 
    font-size: 14px; 
    cursor: pointer; 
    transition: background-color 0.3s;
}

.clear-btn:hover {
    background-color: #E64A19; 
}
</style>
<body>
<header>
      <img id="e-waste" src="images/logo.png" />
      <h1>E - Waste Management</h1>
    </header>

    <nav>
      <ul class="headings">
        <li class="nav-class" id="nav1"><a href="UserHome.jsp">Home</a></li>
        <!-- <li class="nav-class" id="nav2"><a href="about.jsp">About</a></li> -->
        <li class="nav-class" id="nav3"><a href="sell.jsp">Sell</a></li>
        <li class="nav-class" id="nav3"><a href="buy.jsp">Buy</a></li>
        <li class="nav-class" id="nav3"><a href="mywaste.jsp">My Waste</a></li>
        <li class="nav-class" id="nav3"><a href="myorders.jsp">My Orders</a></li>
        <li class="nav-class" id="nav3"><a href="chatboat.jsp">chatboat</a></li>
        <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
      </ul>
    </nav>
 <br />
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
 <footer style="height: 250px;">
      <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
          <li>
            <a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
          </li>
        </ul>
      </div>
    </footer>
     <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
</body>
</html>