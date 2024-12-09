package com.ewaste.database;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

//import com.ewaste.database.DBConn;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/AddLogin")
public class AddLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public AddLogin() {
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        HttpSession session=request.getSession();  
        session.invalidate();  
        
        out.println("<script type=\"text/javascript\">");  
		out.println("alert('You are successfully logged out!');");  
		out.println("</script>");
        request.getRequestDispatcher("index.jsp").include(request, response);         
        out.close(); 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		PrintWriter pw = response.getWriter();
		String userid = request.getParameter("email"); 
	    String pwd = request.getParameter("password");
	    String roll=request.getParameter("roll");
	    
	    
	    System.out.println("Email Id=>"+userid+"\t Password=>"+pwd);
	    
	    try
		{
	    	if(roll.equals("Admin"))
	    	{
	    		if(userid.equals("admin@gmail.com")&&pwd.equals("admin"))
	    		{
	    			pw.println("<html><script>alert('Login Successfully');</script><body>");
					pw.println("");
					pw.println("</body></html>");
			       
					response.sendRedirect("AdminHome.jsp?Login");
	    		}
	    		else
	    		{	
	    			pw.println("<html><script>alert('Incorrect Email Id or Password.....');</script><body>");
					pw.println("");
					pw.println("</body></html>");
					RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
					rd.include(request, response); 
	    		}
	    	}
	    	else if(roll.equals("DeliveryBoy"))
	    	{
	    		Connection con=DBConn.conn();
				 Statement st = (Statement) con.createStatement();
				    ResultSet rs;
				    String str="select * from delivery where email='" + userid + "' and pass='" + pwd + "'";														
				 
				    rs = ((java.sql.Statement) st).executeQuery(str);
				    if(rs.next())
				    {
				    	session.setAttribute("delname", rs.getString("name"));
//				    	
//				     
				    	System.out.println(userid+"Str=>"+str);
				    	pw.println("<html><script>alert('Login Successfully');</script><body>");
						pw.println("");
						pw.println("</body></html>");
				      
						response.sendRedirect("DelHome.jsp?succ");
				    }
				    else 
				    {
				    	pw.println("<html><script>alert('Incorrect Email Id or Password.....');</script><body>");
						pw.println("");
						pw.println("</body></html>");
						RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
						rd.include(request, response); 
				    }
	    	}
	    	else
	    	{
			 Connection con=DBConn.conn();
			 Statement st = (Statement) con.createStatement();
			    ResultSet rs;
			    String str="select * from persons where email='" + userid + "' and password='" + pwd + "'";
			    
			    rs = ((java.sql.Statement) st).executeQuery(str);
			    if(rs.next())
			    {
			    	session.setAttribute("id", rs.getInt("id"));
			    	session.setAttribute("name", rs.getString("name"));
			    	session.setAttribute("email", rs.getString("email"));
			    	session.setAttribute("contact", rs.getString("contact"));
			    	session.setAttribute("address", rs.getString("address"));
			    	
			        
			    	System.out.println(userid+"Str=>"+str);
			    	pw.println("<html><script>alert('Login Successfully');</script><body>");
					pw.println("");
					pw.println("</body></html>");
			        
					response.sendRedirect("UserHome.jsp?succ");
			    }
			    else 
			    {
			    	pw.println("<html><script>alert('Incorrect Email Id or Password.....');</script><body>");
					pw.println("");
					pw.println("</body></html>");
					RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
					rd.include(request, response); 
				}
	    	}
		}	
    catch(Exception e)
	{
		System.out.println(e);
	}   
  }
}
