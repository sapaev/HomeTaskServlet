package com.example.hometaskservlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

// Req -> (S -> S) -> jsp

public class Questionnaire extends HttpServlet {

    public static Map <Integer,String> statisticOfIE=new HashMap<>();
    public static Map <Integer,String> statisticOfChromeE=new HashMap<>();
    public static Map <Integer,String> statisticOCashYes=new HashMap<>();

    public static Map <Integer,String> statisticOfВDevtoolsYes=new HashMap<>();



    private static int a=0;
    private static int b=0;
    private static int c=0;
    private static int f=0;



    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String q1 = request.getParameter("browser");
        String q2 = request.getParameter("cash");
        String q3 = request.getParameter("devtools");
        String name=request.getParameter("name");


        if ("a".equals(q1)) {
            statisticOfIE.put(a+1,"Internet Explorer");
        }
            else{
            statisticOfChromeE.put(b+1,"Gogle Chrome");

            }
        if ("a".equals(q2)) {
            statisticOCashYes.put(c+1, "statisticOCashYes");
        }
        if ("a".equals(q3)){
            statisticOfВDevtoolsYes.put(f+1,"statisticOfВDevtoolsYes");
        }

            HttpSession session = request.getSession(true);
            session.setAttribute("user_answer", name);


        response.sendRedirect("index.jsp");
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String a = request.getParameter("a");
        HttpSession session = request.getSession(false);

        if ("exit".equals(a) && (session != null))
            session.removeAttribute("user_answer");

        response.sendRedirect("index.jsp");//
    }






}
