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
                        <a href="Account" class="list-group-item list-group-item-action active">Profile</a>
                        <a href="ChangePassword" class="list-group-item list-group-item-action">Change Password</a>  
                        <a href="About" class="list-group-item list-group-item-action">About</a>
                    </div> 
                </div>
                
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Your Profile</h4>
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <form id="update-form-inner" action="UserAccountManagement" method="POST">
                                        <div class="form-group row required">
                                            <label for="username" class="col-4 col-form-label">Email</label> 
                                            <div class="col-8">
                                              <input id="username" name="email" placeholder="Email" class="form-control here" required="required" value="${user.getEmail()}" type="text">
                                            </div>
                                          </div>
                                          <div class="form-group row required">
                                            <label for="name" class="col-4 col-form-label">Username</label> 
                                            <div class="col-8">
                                              <input id="name" name="username" placeholder="Username" class="form-control here" required="required" value="${user.getUsername()}"type="text">
                                            </div>
                                          </div>
                                          <div class="form-group row required">
                                            <label for="name" class="col-4 col-form-label">First Name</label> 
                                            <div class="col-8">
                                              <input id="name" name="name" placeholder="First Name" class="form-control here" required="required" value="${user.getfName()}" type="text">
                                            </div>
                                          </div>
                                          <div class="form-group row">
                                            <label for="lastname" class="col-4 col-form-label">Last Name</label> 
                                            <div class="col-8">
                                              <input id="lastname" name="Last Name" placeholder="Last Name" class="form-control here" value="${user.getlName()}" type="text">
                                            </div>
                                          </div>
                                          <div class="form-group row required">
                                            <label for="dob" class="col-4 col-form-label">Date of Birth</label> 
                                            <div class="col-8">
                                                <input id="dob" name="dob" placeholder="Date of Birth" class="form-control here" required="required" value="${user.getDob()}" type="date">
                                            </div>
                                          </div>
                                           <div class="form-group row">
                                            <div class="offset-4 col-8">
                                              <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
                                            </div>
                                          </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
