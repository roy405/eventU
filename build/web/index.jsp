<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.particleground.min.js"></script>
        <script src="js/code.js"></script>
    </head>
    <body>  
        <div class="login-header">
            <div class="content">
                <h2>EventU</h2>
                <h1>Find the perfect venue Today</h1>
            </div>
        </div>
        <div id="login-form" class="login-register-form">     
            <form id="login-form" action="Index" method="POST">
                <h1>Login</h1>
                <input type="text" name="username" placeholder="Username">
                <input type="password" name="password" placeholder="Password">
                <input class="submit" type="submit" value="Login" name="login">
                <a id="register-link">Need an account?</a>
            </form> 
        </div>
        <div id="register-form" class="login-register-form">
            <form id="register-form-inner" action="Index" method="POST">
                <h1>Register</h1>
                <input type="text" name="email"  placeholder="Email*" required="required">
                <input type="text"  name="username" placeholder="Username*" required="required">
                <input type="password" name="password"  placeholder="Password*" required="required">
                <input type="password" name="confirmPassword"  placeholder="Confirm Password*">
                <input type="text" name="fName"  placeholder="First Name*" required="required">
                <input type="text" name="lName"  placeholder="Last Name">
                <input type="date" name="dob"  placeholder="Date of Birth*" required="required">
                
                <input class="submit" type="submit" value="Register" name="register">
            </form>
        </div>
        <a id="return-to-login" class="return-to"><img src="img/back.png" alt=""></a>
        <a id="return-to-site" class="return-to" href="#nearby"><img src="img/down.png" alt=""></a>
        <div id="space-fix"></div>
        <p class="error-message">${status}<p> 
    </body>
</html>
