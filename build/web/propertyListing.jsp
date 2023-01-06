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
        <div class="popular-properties container-fluid">
            <h2 id="nearby">Nearby</h2>
            <div class="districts">
                <h2>Districts</h2>
                <form action="POST">
                    <select>
                        <option value="Colombo">Colombo</option>
                        <option value="Kand"y>Kandy</option>
                        <option value="Anuradhapura">Anuradhapura</option>
                        <option value="Galle">Galle</option>
                    </select>
                    <input type="submit" value="Set" />
                </form>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
