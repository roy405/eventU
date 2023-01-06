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
        
        <jsp:include page="components/menu.jsp" />
        
        <jsp:include page="components/map.jsp" />
        
        <div class="popular-properties container-fluid">
            <h2 id="nearby">Nearby</h2>
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="listing">
                        <div class="img-container container">
                            <img class="img-fluid" src="img/sample.png" alt="">
                        </div>
                        <span>
                            <h2>Property Name</h2>
                            <p>Property Details</p>
                        </span>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="listing">
                        <div class="img-container container">
                            <img class="img-fluid" src="img/sample.png" alt="">
                        </div>
                        <span>
                            <h2>Property Name</h2>
                            <p>Property Details</p>
                        </span>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="listing">
                        <div class="img-container container">
                            <img class="img-fluid" src="img/sample.png" alt="">
                        </div>
                        <span>
                            <h2>Property Name</h2>
                            <p>Property Details</p>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        
        <jsp:include page="components/footer.jsp" />
        
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDwq4bl2CvEssfh_jSV1qLH1XJ-phBZLLQ&callback=initMap"></script>
    </body>
</html>
