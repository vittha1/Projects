package com.ewaste.controller;

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
import javax.servlet.http.HttpSession;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.ewaste.database.DBConn;
import com.ewaste.entity.SellWatse;

@WebServlet(name = "AddWaste", urlPatterns = {"/AddWaste"})
@MultipartConfig(maxFileSize = 16177216) // 16MB limit for file upload
public class AddWaste extends HttpServlet {
    private static final long serialVersionUID = 1L;
    SellWatse house;
    InputStream inputStream = null; // Input stream for file data

    public AddWaste() {
        this.house = new SellWatse();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();

        // Setting form parameters to the SellWaste object
        house.setCategory(request.getParameter("category"));
        house.setName(request.getParameter("name"));
        house.setEmail(request.getParameter("email"));
        house.setMobno(request.getParameter("mobile"));
        house.setAddress(request.getParameter("address"));
        house.setBname(request.getParameter("bname"));
        house.setCondition(request.getParameter("condition"));
        house.setHold(request.getParameter("hold"));
        house.setQuantity(request.getParameter("quantity"));
        house.setPrice(request.getParameter("price"));
        
        //HttpSession session = request.getSession();
        
        
        Part filePart = request.getPart("photo"); 

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConn.conn(); 
            ps = con.prepareStatement("INSERT INTO addwaste(category, name, email, mobile, address, bname, `condition`, hold, quantity, photo, price) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            ps.setString(1, house.getCategory());
            ps.setString(2, house.getName());
            ps.setString(3, house.getEmail());
            ps.setString(4, house.getMobno());
            ps.setString(5, house.getAddress());
            ps.setString(6, house.getBname());
            ps.setString(7, house.getCondition());
            ps.setString(8, house.getHold());
            ps.setString(9, house.getQuantity());
            
            
            HttpSession session = request.getSession();
            session.setAttribute("price", house.getPrice());

            // Handling file input stream
            if (filePart != null) {
                inputStream = filePart.getInputStream();
                ps.setBlob(10, inputStream);
            } else {
                ps.setNull(10, java.sql.Types.BLOB); 
            }

            ps.setString(11, house.getPrice());
            
            
            int i = ps.executeUpdate();

            if (i > 0) {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Ewaste Added Successfully');");
                pw.println("window.location.href = \"UserHome.jsp\";");
                pw.println("</script>");
            } else {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Error...!!!!Try Again Later..');");
                pw.println("window.location.href = \"sell.jsp\";");
                pw.println("</script>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Database connection problem!');");
            pw.println("window.location.href = \"sell.jsp\";");
            pw.println("</script>");
        } finally {
           
            if (inputStream != null) {
                try 
                {
                    inputStream.close();
                } 
                catch (IOException e)
                {
                    e.printStackTrace();
                }
            }

            if (filePart != null) 
            {
                filePart.delete(); 
            }

            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) 
                {
                    e.printStackTrace();
                }
            }

            if (con != null) {
                try
                {
                    con.close();
                } catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
        }
    }
}
