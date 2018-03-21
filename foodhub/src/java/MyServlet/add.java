    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import profiles.profiles;
import profiles.profilesimpdao;

public class add extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String username []=req.getParameterValues("username");
        
        profiles p=new profiles();
                profilesimpdao pd=new profilesimpdao();

       for (int i=0;i<username.length;i++)
       {
       switch (i)
       {
              
       case 0:p.setUsername(username[i]);break;
           case 1:p.setDescription(username[i]);break;
       
       }
    
       }
        
         pd.insert(p);
        
        resp.sendRedirect("newjsp2.jsp");
    }
}
