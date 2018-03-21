package MyServlet3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import users.users;
import users.usersimpdao;

public class up extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String username []=req.getParameterValues("username");
    users u=new users();
      usersimpdao ud=new usersimpdao();
      
    for (int i=0;i<username.length;i++)
    {
        System.out.println(username[i]);
    }
    for(int i=0;i<username.length;i++)
    {
        switch (i)
        {
        case 0:u.setId((Integer.parseInt(username[i])));break;
        case 1:u.setFirst_name(username[i]); break;
        case 2:u.setLast_name(username[i]); break;
        case 3:u.setUsername(username[i]); break;
        case 4:u.setPassword(username[i]);
        case 5:u.setEmail(username[i]); break;
        case 6:u.setContact_no(username[i]); break;
         }
    }
         ud.update(u);
        resp.sendRedirect("user2.jsp");
        
    }
    
}
