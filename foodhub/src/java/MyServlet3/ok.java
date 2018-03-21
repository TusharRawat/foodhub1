package MyServlet3;


import java.io.IOException;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.StyleConstants;
import users.users;
import users.usersimpdao;

public class ok extends HttpServlet{

   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String username []=req.getParameterValues("username");
     users s=new users();
for (int i=0;i<username.length;i++)
    {
        System.out.println(username[i]);
    }
    for (int i=0;i<username.length;i++)
    {
    switch(i)
    {
        case 0:s.setFirst_name(username[i]); break;
        case 1:s.setLast_name(username[i]); break;
        case 2:s.setUsername(username[i]); break;
        case 3:s.setPassword(username[i]);
        case 5:s.setEmail(username[i]); break;
        case 6:s.setContact_no(username[i]); break;
        
    }
    }
    usersimpdao ud=new usersimpdao();
   ud.insert(s);
   resp.sendRedirect("user2.jsp");
    
    
    }
    
}
