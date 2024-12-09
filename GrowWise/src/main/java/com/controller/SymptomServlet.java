package com.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SymptomServlet")
public class SymptomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String childName = request.getParameter("childName");

        // Collect selected symptoms from multiple fields
        Set<String> symptoms = new HashSet<>();
        symptoms.add(request.getParameter("symptomSet1"));
        symptoms.add(request.getParameter("symptomSet2"));
        symptoms.add(request.getParameter("symptomSet3"));
        symptoms.add(request.getParameter("symptomSet4"));

        symptoms.remove(""); // Remove empty selections

        // Determine possible disease
        String disease = determineDisease(symptoms);

        // Display result
        response.setContentType("text/html");
        response.getWriter().println("<!DOCTYPE html>");
        response.getWriter().println("<html><head><title>Diagnosis Result</title>");
        response.getWriter().println("<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css'></head>");
        response.getWriter().println("<body><div class='container mt-5'>");
        response.getWriter().println("<h1>Diagnosis Result</h1>");
        response.getWriter().println("<p><strong>Child's Name:</strong> " + childName + "</p>");
        response.getWriter().println("<p><strong>Symptoms:</strong> " + String.join(", ", symptoms) + "</p>");
        response.getWriter().println("<p><strong>Possible Disease:</strong> " + disease + "</p>");
        response.getWriter().println("<a href='medicalreport.jsp' class='btn btn-primary'>Check Again</a>");
        response.getWriter().println("</div></body></html>");
    }

    private String determineDisease(Set<String> symptoms) {
        if (symptoms.contains("fever") && symptoms.contains("cough")) {
            return "Common Cold or Flu";
        } else if (symptoms.contains("rash") && symptoms.contains("fever")) {
            return "Chickenpox or Measles";
        } else if (symptoms.contains("vomiting") && symptoms.contains("diarrhea")) {
            return "Stomach Infection or Food Poisoning";
        } else if (symptoms.contains("fatigue")) {
            return "Anemia or Viral Infection";
        } else if (symptoms.contains("difficultyBreathing")) {
            return "Respiratory Infection or Asthma";
        } else {
            return "Consult a Pediatrician for Detailed Diagnosis";
        }
    }
}
