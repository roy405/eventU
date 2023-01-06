package Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ConnectionBase", urlPatterns = {"/ConnectionBase"})
public class ConnectionBase extends HttpServlet {
    Connection connection;
    Statement stmt;
    
    public ConnectionBase() {
        this.openConnection();
    }
    
    public void setCon(Connection connection) {
        this.connection = connection;
    }
    
    public Connection openConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventu_db", "root", "");
            this.setCon(connection);   
        } catch (ClassNotFoundException ex) {
            
        } catch (SQLException ex) {
            
        }
        return connection;
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            this.openConnection();
            this.setCon(this.openConnection());
    }
    
}