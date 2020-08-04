<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="<c:url value='/template/web/css/login.css'/>">
        <title>Login</title>
    </head>

    <body>
        <div class='login'>
            <h2>Login</h2>
            <form action="<c:url value="/dang-nhap" />" id="formLogin" method="post">
                <c:if test="${not empty message}">
                    <div class="alert" style="color: red;">
                    ${message}
                </div>
                </c:if>
                <input name='userName' placeholder='Username' type='text'>
                <input id='pw' name='password' placeholder='Password' type='password'>
                <div class='agree' style="margin-left:-26px;">
                    <a href="" class="password">Forgot password ?</a>
                </div>
                <input class='animated' type='submit' value='Login'>
                <a class='forgot' href='<c:url value="/dang-ky?action=register" />'>Create an account?</a>
                <input type="hidden" value="login" name="action"/>
            </form>
        </div>
    </body>
</html>
