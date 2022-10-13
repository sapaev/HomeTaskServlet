package com.example.hometaskservlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

// Req -> (S -> S) -> jsp


@WebServlet("/login")
public class Questionnaire extends HttpServlet {
    public static Map<Integer, String> statisticOfIE = new HashMap<>();
    public static Map<Integer, String> statisticOfChromeE = new HashMap<>();
    public static Map<Integer, String> statisticOCashYes = new HashMap<>();
    public static Map<Integer, String> statisticOfDevtoolsYes = new HashMap<>();


    public static int a = 0;
    public static int b = 0;
    public static int c = 0;
    public static int f = 0;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String q1 = request.getParameter("browser");
        String q3 = request.getParameter("cash");
        String q4 = request.getParameter("devtools");
        String login = request.getParameter("name");

        if (q1 != null && q3 != null && q4 != null) {


            if ("a".equals(q1)) {
                statisticOfIE.put(a + 1, "Internet Explorer");
            } else {
                statisticOfChromeE.put(b + 1, "Gogle Chrome");
            }
            if ("c".equals(q3)) {
                statisticOCashYes.put(c + 1, "statisticOCashYes");
            }
            if ("e".equals(q4)) {
                statisticOfDevtoolsYes.put(f + 1, "statisticOfВDevtoolsYes");
            }
        }


        HttpSession session = request.getSession(true);
        session.setAttribute("user_login", login);
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String a = request.getParameter("a");
        HttpSession session = request.getSession(false);

        if ("exit".equals(a) && (session != null))
            session.removeAttribute("user_login");

        response.sendRedirect("index.jsp");
    }

}
