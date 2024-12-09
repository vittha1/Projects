package com.gym.database;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clearChat")
public class ClearChatServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Clear messages from the session
        HttpSession session = request.getSession();
        session.removeAttribute("messages");

        // Redirect back to the chat page
        response.sendRedirect("chatbot.jsp");
    }
}
