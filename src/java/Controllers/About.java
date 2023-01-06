package Controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "About", urlPatterns = {"/About"})
public class About extends UserBase {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            
            super.doGet(request, response);
            
            HttpSession session = request.getSession();
            String username = session.getAttribute("username").toString();
            
            if(session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");    
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/about.jsp");
                requestDispatcher.forward(request, response);
            }
    }
}