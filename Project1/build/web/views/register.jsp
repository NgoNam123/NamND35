<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.bk.hust.model.UserModel"%>
<%@page import="com.bk.hust.controller.web.RegisterController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="<c:url value='/template/web/css/register.css' />">
        <title>Regist</title>
    </head>

    <body>
        <%
            String userNameErr = "", passwordErr = "", emailErr = "";

            if (request.getAttribute("userNameErr") != null) {
                userNameErr = (String) request.getAttribute("userNameErr");
            }

            if (request.getAttribute("passwordErr") != null) {
                passwordErr = (String) request.getAttribute("passwordErr");
            }

            if (request.getAttribute("emailErr") != null) {
                emailErr = (String) request.getAttribute("emailErr");
            }
        %>
        <div class='login'>
            <h2>Register</h2>
            <form action="<c:url value="/dang-ky?action=register" />" method="post">
                <p style="color: white;">${userErr}</p>
                <input name='username' placeholder='Username' type='text'>
                <p style="color: white;">${passErr}</p>
                <input id='pw' name='password' placeholder='Password' type='password'>
                <p style="color: white;">${emailErr}</p>
                <input name='email' placeholder='E-Mail Address' type='text'>
                <div class='agree'>
                    <input id='agree' name='agree' type='checkbox'>
                    <label for='agree'></label>Accept rules and conditions
                </div>
                <input class='animated' type='submit' value='Register' name="action">
                <a class='forgot' href='<c:url value="/dang-nhap?action=login" />'>Already have an account?</a>
                <input type="hidden" value="register" name="action"/>
            </form>
        </div>
    </body>

</html>
