package com.ewaste.controller;
import com.ewaste.database.DBConn;
import com.ewaste.entity.SellWatse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateWaste", urlPatterns = {"/UpdateWaste"})
public class UpdateWaste extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        System.out.println("Category: " + request.getParameter("category"));
        System.out.println("Name: " + request.getParameter("name"));
        System.out.println("Email: " + request.getParameter("email"));
        
        PrintWriter pw = response.getWriter();
        SellWatse sell = new SellWatse();

        sell.setId(Integer.parseInt(request.getParameter("id")));
        sell.setCategory(request.getParameter("category"));
        sell.setName(request.getParameter("name"));
        sell.setEmail(request.getParameter("email"));
        sell.setMobno(request.getParameter("mobile"));
        sell.setAddress(request.getParameter("address"));
        sell.setBname(request.getParameter("bname"));
        sell.setCondition(request.getParameter("condition"));
        sell.setHold(request.getParameter("hold"));
        sell.setQuantity(request.getParameter("quantity"));
        sell.setPrice(request.getParameter("price"));

        try {
            Connection con = DBConn.conn();
            String sql = "UPDATE addwaste SET category = ?, name = ?, email = ?, mobile = ?, address = ?, bname = ?, "
                    + "`condition` = ?, hold = ?, quantity = ?, price = ? WHERE id = ?";
        PreparedStatement pst = con.prepareStatement(sql);

        pst.setString(1, sell.getCategory());
        pst.setString(2, sell.getName());
        pst.setString(3, sell.getEmail());
        pst.setString(4, sell.getMobno());
        pst.setString(5, sell.getAddress());
        pst.setString(6, sell.getBname());
        pst.setString(7, sell.getCondition()); 
        pst.setString(8, sell.getHold());
        pst.setString(9, sell.getQuantity());
        pst.setString(10, sell.getPrice());
        pst.setInt(11, sell.getId()); 

        int i = pst.executeUpdate(); 

            if (i > 0) 
            {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Update Successfully..!');");
                pw.println("window.location.href = \"mywaste.jsp\";");
                pw.println("</script>");
            } 
            else 
            {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Not-Update try again Later..!!!');");
                pw.println("window.location.href = \"UpdateWaste.jsp\";");
                pw.println("</script>");
            }

        } catch (ClassNotFoundException | SQLException e) 
        {
            e.printStackTrace();  
        }
    }
}
