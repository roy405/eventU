package Controllers;

import Models.UserBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;

@WebServlet(name = "Index", urlPatterns = {"/Index"})
public class Index extends ConnectionBase {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            
            super.doGet(request, response);
        
            HttpSession loginSession = request.getSession();
            loginSession.removeAttribute("username");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        super.doGet(request, response);
        
        if (request.getParameter("login") != null) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            Index profile = new Index();

            try{
                String validateUser = profile.userValidate(username, password);

                switch(validateUser){
                    case "user":
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        response.sendRedirect("Home");
                        break;
                    }

                    case "owner":
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        response.sendRedirect("OwnerDahsboard");
                        break;
                    }

                    default:
                        HttpSession failedsession = request.getSession();
                        failedsession.setAttribute("status", "Incorrect Username or Password");
                        response.sendRedirect("index.jsp?retry=1");
                }
            }catch(IOException e){
                e.printStackTrace();
            }
        }
        
        if (request.getParameter("register") != null) {
            
            int userType = 0;
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            String fName = request.getParameter("fName");
            String lName = request.getParameter("lName");
            String dob = request.getParameter("dob");
            
            UserBean user = new UserBean();
            if (password.equals(confirmPassword)) {
                if(addClient(username, email, fName, lName, dob)){
                    if(addAcc("0", username, password, "0", getUserID(username))){
                        response.sendRedirect("index.jsp");
                    }
                }else{
                    response.sendRedirect("Register");
                }
            } else {
                response.sendRedirect("Register");
            }
        }
    }
    
    private String userValidate(String username, String password){
        Statement statement;
        ResultSet rs;
         
        try {
            String sql = "SELECT userType FROM acc WHERE username= '"+ username+"' " + "&& password='"+ password+"'";
            
            statement = connection.createStatement();
            rs = statement.executeQuery(sql);
            
            while(rs.next()){
                if(rs.getString("userType").equals("0")){
                    return "user";
                }else if(rs.getString("userType").equals("1")){
                    return "owner";
                }
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return "Invalid";
    }
    
    private boolean addClient(String username, String email, String fName, String lName, String dob){
        boolean flag = false;
        
        String sql = "INSERT INTO user (username, email, fName, lName, dob) values ('"+ username +"', '"+ email +"', '"+ fName +"', '"+ lName +"', '"+ dob +"')";
         try{
            stmt = connection.createStatement();
            if(stmt.executeUpdate(sql)>0){
                flag = true;
            }          
        }catch (SQLException ex){
            
        }             
        return flag;
    }
    
    private boolean addAcc (String userType, String username, String password, String accountStatus, String userID){
        boolean flag = false;
        
        String sql = "INSERT INTO acc (userType, username, password, accountStatus, userID) values ('"+ userType +"', '"+ username +"', '"+ password +"', '"+ accountStatus +"', '"+ userID +"')";
         try{
            stmt = connection.createStatement();
            if(stmt.executeUpdate(sql)>0){
                flag = true;
            }          
        }catch (SQLException ex){
            
        }             
        return flag;
    }
    
    private String getUserID(String username) { 
        Statement statement;
        ResultSet rs;
        
        String userID = "";
        
        try {
            String sql = "SELECT * FROM user WHERE username = '"+ username +"'";
            statement = connection.createStatement();
            
            rs = statement.executeQuery(sql);
            
            while(rs.next()){
                userID = rs.getString("userID");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return userID;  
    }
}

