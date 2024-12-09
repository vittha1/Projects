<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.ewaste.database.DBConn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Price Display</title>
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #282c34;
        }
        .Cheadline {
            color: hotpink;
            font-style: italic;
            font-size: 30px;
        }
        label {
            color: black;
            font-size: 18px;
            font-style: italic;
            font-family: cursive;
            font-weight: bold;
        }
        .card {
            margin-bottom: 30px;
            width: 300px;
            text-align: center;
        }
        .avatar img {
            width: 100%;
            height: 300px;
        }
         button {
 outline: none;
 cursor: pointer;
 border: none;
 padding: 0.9rem 2rem;
 margin: 0;
 font-family: inherit;
 font-size: inherit;
 position: relative;
 display: inline-block;
 letter-spacing: 0.05rem;
 font-weight: 700;
 font-size: 17px;
 border-radius: 500px;
 overflow: hidden;
 background: #66ff66;
 color: ghostwhite;
}

button span {
 position: relative;
 z-index: 10;
 transition: color 0.4s;
}
button:hover span {
 color: black;
}

button::before,
button::after {
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 z-index: 0;
}

button::before {
 content: "";
 background: #000;
 width: 120%;
 left: -10%;
 transform: skew(30deg);
 transition: transform 0.4s cubic-bezier(0.3, 1, 0.8, 1);
}
 button:hover::before {
 transform: translate3d(100%, 0, 0);
}

        .hidden-form {
            display: none;
            margin-top: 20px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            flex-direction: column; 
            align-items: center; 
        }
        .hidden-form button[type="submit"] {
            background-color: #66ff66; 
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
    <script>
        function toggleForm() {
            const form = document.getElementById("paymentForm");
            const card = document.querySelector(".card");
            if (form.style.display === "none" || form.style.display === "") {
                form.style.display = "flex";
                card.style.display = "none";
            }
        }
    </script>
</head>
<body>
<%
    
    String price = request.getParameter("price");
    int wasteId = Integer.parseInt(request.getParameter("id")); 
    String cate = null;  
    String bname = null;
    
    String username = (String) session.getAttribute("email");
    int id = (int) session.getAttribute("id");

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    Blob blob = null;

    try {
        con = DBConn.conn();
        String query = "SELECT photo, category, bname,address,quantity,price FROM addwaste WHERE id = ?";
        pst = con.prepareStatement(query);
        pst.setInt(1, wasteId);
        
        rs = pst.executeQuery();

        if (rs.next()) {
            blob = rs.getBlob("photo");
            byte[] imageBytes = blob.getBytes(1, (int) blob.length());
            String encodedImage = Base64.getEncoder().encodeToString(imageBytes);
            String image = "data:image/jpg;base64," + encodedImage;
            cate = rs.getString("category");
            bname = rs.getString("bname");
            
            
%>
            <div class="card">
                <div class="avatar">
                    <img src="<%= image %>" alt="Product Image" />
                </div>
                <ul class="list-group list-group-flush">
                    
                    <li class="list-group-item"><b>Category:&nbsp;&nbsp;</b><%= cate != null ? cate : "N/A" %></li>
                    <li class="list-group-item"><b>Brand Name:&nbsp;&nbsp;</b><%= bname != null ? bname : "N/A" %></li>
                   
                    <li class="list-group-item"><b>Online Payment:&nbsp;&nbsp;</b><button onclick="toggleForm()"><span>Pay</span></button></li> 
                </ul>
                <div class="card-body">
                    <h4>Price = <%= price != null ? price + " RS" : "Price not set" %></h4>
                </div>
            </div>

            <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

            <div id="paymentForm" class="hidden-form">
                <h4>Payment Form</h4>
                <form action="payment" method="post">
                    <label for="amount">Amount:</label>
                    <input type="text" id="amount" name="amount" value="<%= price != null ? price : "0" %>" readonly>
                    <br>
                    <label for="name">Your Name:</label>
                    <input type="text" id="name" name="name" placeholder="Your Name" required/>
                    <br>
                    <label for="cardname">Card Name:</label>
                    <input type="text" id="cardname" name="cardname" placeholder="Card Name" required/>
                    <br>
                    <label for="cardno">Card No:</label>
                    <input type="text" id="cardno" name="cardno" placeholder="Card No" required/>
                    <br>
                    <label for="cvv">CVV:</label>
                    <input type="text" id="cvv" name="cvv" placeholder="CVV No" required/>
                    <br>
                    <button type="submit"><span>Pay</span></button>
                </form>
            </div>

<%
        } else {
            out.println("Image not found.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pst != null) try { pst.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
<%
try
{
	Statement st = (Statement) con.createStatement();
    ResultSet r;
    String str="select * from persons where email='" + username + "' and id='" + id + "'";
    
    r = ((java.sql.Statement) st).executeQuery(str);
    if(rs.next())
    {
    	session.setAttribute("id", r.getInt("id"));
    	session.setAttribute("mobile",r.getString("contact"));
    	session.setAttribute("email", r.getString("email"));
    	session.setAttribute("category", r.getString("category"));
    	session.setAttribute("contact", r.getString("contact"));
    	session.setAttribute("address", r.getString("address"));
    	
    }
}
	/* int id=session.getAttribute("name");
	String name=session.getAttribute("name");
    String address=session.getAttribute("address");
    String quantity=session.getAttribute("address"); */
catch(Exception e)
{
	e.printStackTrace();
}

%>
<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="success")
		{
		alert("payment successfull");
		}
	</script>
	
</body>
</html>
