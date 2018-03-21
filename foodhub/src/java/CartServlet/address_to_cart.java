/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CartServlet;

import cart.cart;
import cart.cartimpdao;
import java.io.IOException;
import java.sql.Array;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class address_to_cart extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] id=req.getParameterValues("items");
        System.out.println(id[0]);
        String[] address=req.getParameterValues("address");
             StringBuffer buffer=new StringBuffer();
             System.out.println("address lenghtt :"+address.length);
                   for(int i=0;i<address.length;i++)
                   {
                       buffer.append(address[i]+",");
                   }
                                cartimpdao cd=new cartimpdao();
                  
        for (int i = 0; i < id.length; i++) {
            
                int value=Integer.parseInt(id[i]);
                    cd.updateaddress(value,buffer.toString());
         System.out.println(buffer);
             
        }
 
        resp.sendRedirect("thankyou.jsp");

     }
    
}
