<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.gym.database.DBConn" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Membership</title>
<link rel="stylesheet" href="css/hedfoot.css">
</head>
<style>
    /* Preserving the original styling as requested */
    
     main {
        display: flex;
        justify-content: space-around;
        align-items: flex-start;
        height: auto;
        padding: 20px;
        background-image: url('images/bac.jpg');
        background-size: cover;
        background-position: center;
        position: relative;
    }

    .box-container {
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        width: auto;
    }

    .box {
        background-color: black;
        height: 80px;
        width: 250px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 1.2rem;
        font-family: Arial, sans-serif;
        text-align: center;
        transition: transform 0.3s ease, width 0.3s ease, height 0.3s ease;
        margin: 10px 0;
    }

    .box a {
        text-decoration: none;
        color: white;
        font-weight: bold;
        font-size: 1.6rem;
    }

    .box:hover {
        transform: scale(1.05);
        cursor: pointer;
    }

    .content {
        display: none;
        background-color: rgba(255, 255, 255, 0.9);
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        padding: 20px;
        text-align: center;
        width: 50%;
        height: auto;
    }

    .content.active {
        display: block;
    }

    .card-body {
        border: 1px solid #ddd;
        border-radius: 5px;
        margin: 10px 0;
        padding: 15px;
        background-color: #fff;
        transition: transform 0.2s;
    }

    .card-body:hover {
        transform: scale(1.02);
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
    }

    .list-group {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .list-group-item {
        padding: 10px;
        border: none;
        border-bottom: 1px solid #f0f0f0;
        font-size: 1.3rem;
    }
    

    .join {
        background-color: lightblue;
        height: 50px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 1rem;
        font-family: Arial, sans-serif;
        text-align: center;
        transition: transform 0.3s ease, width 0.3s ease, height 0.3s ease;
        margin: 10px 0;
    }

    .join a {
        text-decoration: none;
        color: black;
        font-weight: bold;
        font-size: 1rem;
    }

    .join:hover {
        transform: scale(1.05);
        cursor: pointer;
    }

    .form-container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 300px;
        margin: 20px auto; /* Center the form */
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    select, input, button {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ddd;
        font-size: 16px;
        margin-bottom: 10px;
    }

    button {
        background-color: blue;
        color: white;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
        border: none;
    }

    button:hover {
        background-color: lightblue;
    }

    @media (max-width: auto) {
        .form-container {
            padding: 15px;
        }

        h2 {
            font-size: 2rem;
        }

        input, button {
            font-size: 14px;
            padding: 8px;
        }}
        .navbar-title {
        flex-grow: 1;
        text-align: center;
    }

    .navbar-title h1 {
        font-size: 2rem;
        font-family: 'Times New Roman', serif;
        color: cyan;
        margin: 0;
    }
      .chat-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px;
            height: 200px;
        }

        .chat-box {
            width: 100%;
            max-width: 500px;
            height: 400px;
            border: 1px solid #ccc;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            overflow-y: auto;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .chat-message {
            margin-bottom: 15px;
        }

        .user-message {
            background-color: #e1f5fe;
            border-radius: 8px;
            padding: 10px;
            max-width: 70%;
            margin-left: auto;
            margin-right: 0;
            word-wrap: break-word;
        }

        .bot-message {
            background-color: #f1f1f1;
            border-radius: 8px;
            padding: 10px;
            max-width: 70%;
            margin-left: 0;
            margin-right: auto;
            word-wrap: break-word;
        }

        /* Image styles */
        .bot-image {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-top: 10px;
        }

        /* User input and Send button */
        .input-container {
            display: flex;
            width: 100%;
            max-width: 500px;
            justify-content: space-between;
        }

        .user-input {
            width: 80%;
            padding: 10px;
            font-size: 16px;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            box-sizing: border-box;
        }

        .send-btn {
            width: 18%;
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
        }

        .send-btn:hover {
            background-color: #45a049;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            .chat-box {
                width: 90%;
                height: 350px;
            }

            .input-container {
                flex-direction: column;
                align-items: center;
            }

            .user-input, .send-btn {
                width: 100%;
                margin-bottom: 10px;
            }

            .send-btn {
                width: 100%;
            }
        }}
</style>
<body>
<header>
    <nav class="navbar">
        <div class="logo">
            <a href="#home">
                <img src="images/file.png" alt="Logo">
            </a>
        </div>
        <div class="navbar-title">
                <h1>Welcome <%=session.getAttribute("firstname")%></h1>
            </div>
        <ul class="nav-links">
            <li><a href="UserHome.jsp">Home</a></li>
            <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("firstname")%>-Logout</a></li> 
        </ul>
    </nav>
</header>

<main>
    <div class="box-container">
        <div class="box" onclick="showContent('plans')"><a>All Plans</a></div>
        <div class="box" onclick="showContent('membership')"><a>My Plans</a></div>
        <div class="box" onclick="showContent('diet')"><a>My Diet</a></div>
        <div class="box" onclick="showContent('workout')"><a>My Workout</a></div>
        <div class="box" onclick="showContent('chatboat')"><a>ChatBoat</a></div>
        <div class="box" onclick="showContent('notifications')"><a>Notifications</a></div>
        <div class="box" onclick="showContent('back')"><a>Exit</a></div>
    </div>

    <div id="plans" class="content">
        <h2>All Plans</h2>
        <section class="container">
            <div class="row">
                <%
                    try {
                        Connection con = DBConn.conn();
                        String s = "SELECT * FROM plans";
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery(s);
                        while (rs.next()) {
                            int pid = rs.getInt(1);
                %>

                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item"><b>Plan Name:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                        <li class="list-group-item"><b>Duration:&nbsp;&nbsp;</b><%= rs.getString(3) %> Months</li>
                        <li class="list-group-item"><b>Price:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                        <li class="list-group-item"><b>Features:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                    </ul>
                    <div class="join" onclick="showContent('join')"><a>Join Now</a></div>
                </div>

                <%
                        }
                        rs.close();
                        st.close();
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </div>
        </section>
    </div>

    <!-- My Membership -->
    <div id="membership" class="content">
        
            <h2>My Plans</h2>
            <section class="container">
                <div class="row">
                 <%
                HttpSession sess = request.getSession(false);
                String uname=(String)sess.getAttribute("username");
                System.out.println(uname);
            %>
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM admision where username ='" + uname + "'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                int aid = rs.getInt(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                          
                            <li class="list-group-item"><b>Plan Name:&nbsp;&nbsp;</b><%= rs.getString(3) %></li>
                            <li class="list-group-item"><b>Trainer Name:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Amount:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Start Date:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            <li class="list-group-item"><b>End Date:&nbsp;&nbsp;</b><%= rs.getString(13) %> </li>
                        </ul>
                        
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </section>
        </div>
  <!-- Chatboat -->
 <div id="chatboat" class="content <%= "chatboat".equals(request.getAttribute("activeDiv")) ? "active" : "" %>">
  <h2>ChatBoat</h2>
  <div class="chat-container">
        <div class="chat-box" id="chatBox">
            <!-- Chat messages will be displayed here -->
            <%
                String userQuestion = (String) request.getAttribute("userQuestion");
                String answer = (String) request.getAttribute("answer");
                String imageUrl = (String) request.getAttribute("imageUrl");

                if (userQuestion != null && answer != null) {
                    out.println("<div class='chat-message user-message'><b>You:</b> " + userQuestion + "</div>");
                    out.println("<div class='chat-message bot-message'><b>Bot:</b> " + answer + "</div>");
                    if (imageUrl != null && !imageUrl.isEmpty()) {
                        out.println("<img src='" + imageUrl + "' class='bot-image' alt='Image'>");
                    }
                }
            %>
        </div>

      
        <form method="POST" action="chatbot" class="input-container">
            <input type="text" name="userQuestion" class="user-input" placeholder="Ask a question..." required />
            <button type="submit" class="send-btn">Send</button>
        </form>
    </div>
  </div>
    
    <!-- My Diet -->
    <div id="diet" class="content">
        <h2>My Diet</h2>
        <section class="container">
                <div class="row">
                 <%
                HttpSession session2 = request.getSession(false);
                String name2=(String)sess.getAttribute("username");
                System.out.println(name2);
            %>
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM diet where username ='" + name2 + "'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                String name3 = rs.getString(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                          
                            <li class="list-group-item"><b>Your Name:&nbsp;&nbsp;</b><%= rs.getString(1) %></li>
                            <li class="list-group-item"><b>Day:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Date:&nbsp;&nbsp;</b><%= rs.getString(3) %>
                            <li class="list-group-item"><b>Meal:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Calories:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            
                        </ul>
                        
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </section>
    </div>

    <!-- My Workout -->
    <div id="workout" class="content">
        <h2>My Workout</h2>
        <section class="container">
                <div class="row">
                 <%
                HttpSession session1 = request.getSession(false);
                String name1=(String)sess.getAttribute("username");
            %>
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM workout where username ='" + name1 + "'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                String name3 = rs.getString(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                          
                            <li class="list-group-item"><b>Your Name:&nbsp;&nbsp;</b><%= rs.getString(1) %></li>
                            <li class="list-group-item"><b>Day:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Date:&nbsp;&nbsp;</b><%= rs.getString(3) %>
                            <li class="list-group-item"><b>Exercise:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Duration:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            <li class="list-group-item"><b>Note:&nbsp;&nbsp;</b><%= rs.getString(6) %> </li>
                        </ul>
                        
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </section>
    </div>
   
   <div id="notifications" class="content">
        <h2>My Workout</h2>
        <section class="container">
                <div class="row">
                 <%
                HttpSession session4 = request.getSession(false);
                String name6=(String)sess.getAttribute("username");
            %>
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM notify where username ='" + name6 + "'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                String name3 = rs.getString(2);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                             
                            <li class="list-group-item"><b>Message from admin:&nbsp;&nbsp;</b><%= rs.getString(3) %></li>
                            
                        </ul>
                        
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </section>
    </div>
    <!-- Join Now -->
    <div id="join" class="content">
        <h2 style="color: orange">Admission Form</h2>
        <form id="gymForm" action="gymForm" method="post">
            <div class="form-group">
                <label for="trainer">Select Trainer</label>
                <select id="trainer" name="trainer" required>
                    <option value="" disabled selected>--Select--</option>
                    <%
                        Connection con = DBConn.conn();
                        Statement boyStmt = con.createStatement();
                        ResultSet rsplan = boyStmt.executeQuery("SELECT * FROM trainer");
                        while (rsplan.next()) {
                            String fName = rsplan.getString("fname") + " " + rsplan.getString("lname"); // Concatenate first and last name
                    %>
                    <option value="<%= fName %>"><%= fName %></option>
                    
                    <% 
                        }
                        rsplan.close();
                        boyStmt.close();
                    %>
                    <option value="chatboat">ChatBoat(for basic plan users)</option>
                </select>
            </div>
            
            <div class="form-group">
                <label for="membership">Select Membership Plan</label>
                <select id="membership" name="membership" required>
                    <option value="" disabled selected>--Select--</option>
                    <%
                        Connection conn = DBConn.conn();
                        Statement boy = conn.createStatement();
                        ResultSet rs = boy.executeQuery("SELECT * FROM plans");
                        while (rs.next()) {
                            String pName = rs.getString("pname"); 
                    %>
                    <option value="<%= pName %>"><%= pName %></option>
                    <% 
                        }
                        rs.close();
                        boy.close();
                        conn.close();
                    %>
                </select>
            </div>
            
            <div class="form-group">
                <label for="amount">Select Amount According to your plan</label>
                <select id="amount" name="amount" required>
                    <option value="" disabled selected>--Select--</option>
                    <%
                        Connection co = DBConn.conn();
                        Statement bo = co.createStatement();
                        ResultSet r = bo.executeQuery("SELECT * FROM plans");
                        while (r.next()) {
                            String price = r.getString("price"); 
                    %>
                    <option value="<%= price %>"><%= price %></option>
                    <% 
                        }
                        r.close();
                        bo.close();
                        co.close();
                    %>
                </select>
            </div>
             <label for="sdate">Start Date:</label>
            <input type="date" id="sdate" name="sdate" required>
            
            <label for="height">Your Height(in cm):</label>
            <input type="text" id="height" name="height" placeholder="Your Height" required>
            
            <label for="weight">Your Weight(in kg):</label>
            <input type="text" id="weight" name="weight" placeholder="weight" required>
            
            <label for="focus">What you want to build:</label>
            <input type="text" id="focus" name="focus" placeholder="" required>
            
            <label for="username">Your Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter Your Username" required>
                
            <label for="cname">Card Name:</label>
            <input type="text" id="cname" name="cname" placeholder="Card Name" required>
                
            <label for="cno">Card No:</label>
            <input type="number" id="cno" name="cno" placeholder="Card No" required>
                
            <label for="cvv">CVV:</label>
            <input type="number" id="cvv" name="cvv" placeholder="CVV No" required>
                <br><br>
            <button type="submit">Pay</button>
        </form>
    </div>
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
<script>
    function showContent(contentId) {
        // Hide all content divs
        const contents = document.querySelectorAll('.content');
        contents.forEach(content => {
            content.classList.remove('active');
        });
        
        // Show the selected content
        const selectedContent = document.getElementById(contentId);
        selectedContent.classList.add('active');
    }
</script>
</body>
</html>
