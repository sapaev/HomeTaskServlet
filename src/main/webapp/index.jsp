<%@ page import="com.example.hometaskservlet.Questionnaire" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Тест</title>

</head>
<body>

<% String finish = (String)session.getAttribute("user_answer"); %>
<h1>ПРивет!</h1>
<% if (finish == null || "".equals(finish)) { %>
<form name="test" method="post" action="/questionnaire">
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
    <label><input type="radio" name="browser" value="b"> Opera</label>
    <Br>
    <h2>Чистите ли Вы кэш перед работой:</h2>
    <Br>
    <label><input type="radio" name="cash" value="a"> Да</label>
    <Br>
    <label><input type="radio" name="cash" value="b">  Нет</label>
    <Br>
    <h2>Используете ли Вы консоль разработчика:</h2><Br>
    <label><input type="radio" name="devtools" value="a"> Да</label><
    Br>
    <label><input type="radio" name="devtools" value="b"> Нет</label>
    <Br>
    <label><input type="submit" name="send" length="50"></label>
</form>
<% } else{ %>
<h1>Your answers: </h1>
Каким браузером в основном пользуетесь:
<Br>
GoogleChrome:
<% int sizeOfChrome = Questionnaire.statisticOfChromeE.size(); System.out.println(sizeOfChrome); %>
<Br>
InternetExplorer:
<% int sizeOfIE = Questionnaire.statisticOfIE.size(); %>
<%System.out.println(sizeOfIE); %>
<Br>
Чистите ли Вы кэш перед работой:
<% int cleanCash = Questionnaire.statisticOCashYes.size();%>
<%System.out.println(cleanCash); %>
<Br>
Используете ли Вы консоль разработчика:
<% int devTools = Questionnaire.statisticOfВDevtoolsYes.size();%>
<%System.out.println(devTools); %>

<br>Click this link to <a href="/login?a=exit">Back</a>

<% } %>

</body>
</html>