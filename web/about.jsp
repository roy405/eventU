<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Venues</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/code.js"></script>
    </head> 
    
    <body>   
        
        <div class="container">
            <a id="goBack" href="Home">< Go Back</a>
            
            <div class="row">
                
                <div class="col-md-3 ">
                    <div class="list-group ">
                        <a href="Account" class="list-group-item list-group-item-action">Profile</a>
                        <a href="ChangePassword" class="list-group-item list-group-item-action">Change Password</a>   
                        <a href="About" class="list-group-item list-group-item-action active">About</a>
                    </div> 
                </div>
                
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>About</h4>
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p>EventU : Copyright : All Rights Reserved</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
