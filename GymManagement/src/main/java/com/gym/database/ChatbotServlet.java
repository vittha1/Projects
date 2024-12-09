package com.gym.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/chatbot")
public class ChatbotServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/chat";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userQuestion = request.getParameter("userQuestion");
        String answer = getAnswerFromDB(userQuestion);

        // Retrieve or initialize the message list
        HttpSession session = request.getSession();
        List<String> messages = (List<String>) session.getAttribute("messages");
        if (messages == null) {
            messages = new ArrayList<>();
        }

        // Add the user question and bot response to the chat history
        messages.add("<div class='chat-message user-message'><b>You:</b> " + userQuestion + "</div>");
        messages.add("<div class='chat-message bot-message'><b>Bot:</b> " + answer + "</div>");

        session.setAttribute("messages", messages);

        // Redirect back to the same page
        response.sendRedirect("chatbot.jsp");
    }

    private String getAnswerFromDB(String question) {
        String answer = "Sorry, I don't understand that question.";
        String query = "SELECT answer FROM chatbot WHERE question = ? ORDER BY RAND() LIMIT 1";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, question);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    answer = rs.getString("answer");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return answer;
    }
}
