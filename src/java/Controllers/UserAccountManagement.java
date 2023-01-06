package Controllers;

import Models.UserBean;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Account", urlPatterns = {"/Account"})
public class UserAccountManagement extends UserBase {

    private String sessionUsername;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            
            super.doGet(request, response);
            
            HttpSession session = request.getSession();
            sessionUsername = session.getAttribute("username").toString();
           
            UserBean user = getUser();
            
            request.setAttribute("user", user);
            
            if(session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");    
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/userAccountManagement.jsp");
                requestDispatcher.forward(request, response);
            }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        super.doGet(request, response);
        
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String dob = request.getParameter("dob");
            
        UserBean user = new UserBean();
        
        if (password.equals(confirmPassword)) {
            if(updateClient(username, email, fName, lName, dob)){
                if(updateAcc(username)){
                    response.sendRedirect("UserAccountManagement");
                }
            }else{
                response.sendRedirect("UserAccountManagement");
            }
        } else {
            response.sendRedirect("UserAccountManagement");
        }
    }
    
    private boolean updateClient(String username, String email, String fName, String lName, String dob){
        boolean flag = false;
        
        String sql = "UPDATE user SET username = '"+ username +"' WHERE username = '"+ sessionUsername +"'";
         try{
            stmt = connection.createStatement();
            if(stmt.executeUpdate(sql)>0){
                flag = true;
            }          
        }catch (SQLException ex){
            
        }             
        return flag;
    }
    
    private boolean updateAcc (String username){
        boolean flag = false;
        
        String sql = "UPDATE acc SET username = '"+ username +"' WHERE username = '"+ sessionUsername +"'";
         try{
            stmt = connection.createStatement();
            if(stmt.executeUpdate(sql)>0){
                flag = true;
            }          
        }catch (SQLException ex){
            
        }             
        return flag;
    }
    
    private UserBean getUser() {

        UserBean user = new UserBean();
        
        Statement statement;
        ResultSet rs;
        
        try {
            
            String sql = "SELECT * FROM user WHERE username = '"+ sessionUsername +"'";
            statement = connection.createStatement();
            
            rs = statement.executeQuery(sql);
            
            while(rs.next()){

                user.setUserID(Integer.parseInt(rs.getString("userID")));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setfName(rs.getString("fName"));
                user.setlName(rs.getString("lName"));
                user.setDob(rs.getString("dob"));
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return user;  
    }
}