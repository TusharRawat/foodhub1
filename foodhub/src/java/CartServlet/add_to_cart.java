package CartServlet;

import cart.cart;
import cart.cartimpdao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class add_to_cart extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                PrintWriter out=resp.getWriter();
                resp.setContentType("text/html");
                resp.setCharacterEncoding("UTF-8");

                 String id = req.getParameter("id");
                String image= req.getParameter("image");
                String food_item= req.getParameter("food_item");
                String description= req.getParameter("description");
                String price= req.getParameter("price");
               String quanti= req.getParameter("quanti");
               String address=req.getParameter("address");
               System.out.println("foot item h ye "+food_item);
                cart c=new cart();
                List<cart> l=new ArrayList();
                cartimpdao cd=new cartimpdao();
                l=(ArrayList)cd.getCart();
                
                int found = -1;
                
                for (cart c2 : l) 
                {
                        if(Integer.parseInt(id)==c2.getProduct_id())
                        {
                            resp.setContentType("application/json");
                            System.out.println("Already Exist");
                            found = c2.getId();
                          
                        }
                 }
        
                if( found == -1 ){
                    c.setProduct_id(Integer.parseInt(id));
                    c.setQuantity(Integer.parseInt(quanti));
                    c.setFood_item(food_item);
                    c.setImage(image);
                    c.setDescription(description);
                    c.setPrice(Integer.parseInt(price));
                    c.setAddress(address);
                    cd.insert(c);
           
                }
                else{
                    c = cd.getCart(found);
                    c.setQuantity(Integer.parseInt(quanti));
                    c.setFood_item(food_item);
                    c.setImage(image);
                    c.setDescription(description);
                    c.setPrice(Integer.parseInt(price));
                    c.setAddress(address);
                    cd.update(c);
           
                }
                       
        
        
        
       
                
    }
     
                    
}
