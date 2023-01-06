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
                        <a href="ChangePassword" class="list-group-item list-group-item-action active">Change Password</a>    
                        <a href="About" class="list-group-item list-group-item-action">About</a>
                    </div> 
                </div>
                
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Change your Password</h4>
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group row required">
                                            <label for="password" class="col-4 col-form-label">Password</label> 
                                            <div class="col-8">
                                              <input id="password" name="password" placeholder="Current Password" class="form-control here" required="required" type="text">
                                            </div>
                                          </div>
                                          <div class="form-group row required">
                                            <label for="newPassword" class="col-4 col-form-label">New Password</label> 
                                            <div class="col-8">
                                              <input id="newPassword" name="newPassword" placeholder="New Password" class="form-control here" required="required" type="text">
                                            </div>
                                          </div>
                                          <div class="form-group row required">
                                            <label for="confirmNewPassword" class="col-4 col-form-label">Confirm Password</label> 
                                            <div class="col-8">
                                              <input id="confirmNewPassword" name="confirmNewPassword" placeholder="Confirm Password" class="form-control here" required="required" type="text">
                                            </div>
                                           </div>
                                           <div class="form-group row">
                                            <div class="offset-4 col-8">
                                              <button name="submit" type="submit" class="btn btn-primary">Change Password</button>
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
