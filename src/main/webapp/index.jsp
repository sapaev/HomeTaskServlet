<%@ page import="com.example.hometaskservlet.Questionnaire" %>
<%@page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>Тест</title>
</head>
<body>

<% String login = (String) session.getAttribute("user_login"); %>

<% if (login == null || "".equals(login)) { %>
<form method="POST" action="/login">
    <h2>Укажите Ваше имя:</h2>
    <br>
    <label><input type="text" size="40" name="name"><br></label>
    <h2>Укажите Ваше ФИО:</h2>
    <br>
    <label><input type="text" size="40"></label>
    <br>
    <h2>Каким браузером в основном пользуетесь:</h2>
    <Br>
    <label><input type="radio" name="browser" value="a"> Internet Explorer</label>
    <Br>
    <label><input type="radio" name="browser" value="b"> Chrome</label>
    <Br>
    <h2>Чистите ли Вы кэш перед работой:</h2>
    <Br>
    <label><input type="radio" name="cash" value="c"> Да</label>
    <Br>
    <label><input type="radio" name="cash" value="d"> Нет</label>
    <Br>
    <h2>Используете ли Вы консоль разработчика:</h2><Br>
    <label><input type="radio" name="devtools" value="e"> Да</label>
    <Br>
    <label><input type="radio" name="devtools" value="f"> Нет</label>
    <Br>
    <label><input type="submit" name="send" length="50"></label>
</form>
<% } else { %>
<h1>Your answers: </h1>
Каким браузером в основном пользуются:
<Br>
GoogleChrome:
<%out.println(Questionnaire.b); %>
<Br>
InternetExplorer:

<%out.println(Questionnaire.a); %>
<Br>
Чиститят ли кэш перед работой:

<%out.println(Questionnaire.c); %>
<Br>
Используют ли консоль разработчика:

<% out.println(Questionnaire.f); %>
<br>Click this link to <a href="/login?a=exit">Back</a>
<% } %>
</body>
</html>