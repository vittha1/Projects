package com.gym.registration;

import java.io.IOException;

import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.gym.database.DBConn;
import com.gym.entity.Registration;

@WebServlet(name = "UserRegistration", urlPatterns = {"/UserRegistration"})
@MultipartConfig(maxFileSize = 16177216)
public class RegistrationServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	// Input stream for handling file uploads (if any)
	InputStream inputStream = null;
	Registration reg=new Registration();;  // Registration object to hold form data

	public RegistrationServlet() 
	{
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		// Initialize the Registration object
		

		// Retrieve form data and populate the Registration object
		reg.setFname(request.getParameter("firstname"));
		reg.setLname(request.getParameter("lastname"));
		reg.setMob(request.getParameter("mobile"));
		reg.setMail(request.getParameter("email"));
		reg.setAdd(request.getParameter("address"));
		reg.setGender(request.getParameter("gender"));
		reg.setUsername(request.getParameter("username"));
		reg.setPass(request.getParameter("password"));

		// Retrieve the uploaded file (photo)
		Part filePart = request.getPart("photo");

		Connection con = null;
		PreparedStatement ps = null;

		try {
			// Establish a database connection
			con = DBConn.conn();

			// Prepare the SQL INSERT statement
			ps = con.prepareStatement("INSERT INTO users(firstname, lastname, mobile, email, address, gender, username, password) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");

			// Set the parameters using the Registration object's getters
			ps.setString(1, reg.getFname());
			ps.setString(2, reg.getLname());
			ps.setString(3, reg.getMob());
			ps.setString(4, reg.getMail());
			ps.setString(5, reg.getAdd());
			ps.setString(6, reg.getGender());
			ps.setString(7, reg.getUsername());
			ps.setString(8, reg.getPass());

			
			int i = ps.executeUpdate();

			// Check if the insert was successful
			if (i > 0) {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Account Created Successfully');");
				pw.println("window.location.href = \"login.jsp\";");
				pw.println("</script>");
			} else {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Error...!!!!Try Again Later..');");
				pw.println("window.location.href = \"UserRegister.jsp\";");
				pw.println("</script>");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Database connection problem!');");
			pw.println("window.location.href = \"UserRegister.jsp\";");
			pw.println("</script>");
		} finally {
			// Clean up resources
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (filePart != null) {
				filePart.delete(); // Clean up temporary file storage
			}

			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
