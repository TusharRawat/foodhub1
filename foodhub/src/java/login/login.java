package login;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import users.usersdao;
import users.usersimpdao;

public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String email=req.getParameter("email");
    String password=req.getParameter("password");
        usersimpdao ud=new usersimpdao() ;
        boolean status=ud.validate(email, password);
        System.out.println("Status Check"+status);
       
        if(status)
            resp.sendRedirect("MainHomePage.jsp");
        else
            resp.sendRedirect("LoginFailed.jsp");
        
        
       
    
        
        
    }
    
}
