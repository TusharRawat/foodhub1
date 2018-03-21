package MyServlet2;

import category.category;
import category.categoryimpdao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateproduct extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username []=req.getParameterValues("username");
    category c=new category();
    categoryimpdao cd=new categoryimpdao();
    for (int i=0;i<username.length;i++)
    {
        
        System.out.println( username[i] );
        switch (i)
        {
            case 0:c.setId(Integer.parseInt(username[i])); break;
            case 1:c.setUsername(username[i]); break;
            case 2:c.setDescription(username[i]); break;
            case 3:c.setPrice(Integer.parseInt(username[i])); break;
            case 4:c.setCategory(username[i]); break;

        }
    }
        
        cd.update(c);
        resp.sendRedirect("category2.jsp");
    
    }    
    
    }

    

