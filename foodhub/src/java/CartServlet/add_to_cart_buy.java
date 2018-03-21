package CartServlet;

import cart.cart;
import cart.cartimpdao;
import java.io.IOException;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;

public class add_to_cart_buy extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String id=req.getParameter("id");
    String image=req.getParameter("image");
    String food_item=req.getParameter("food_item");
    String description=req.getParameter("description");
    String price=req.getParameter("price");
        System.out.println("Ye Dekho Bhai"+id);
        cart c=new cart();
        c.setProduct_id(Integer.parseInt(id));
        c.setImage(image);
        c.setFood_item(food_item);
       
        c.setPrice(Integer.parseInt(price));
        
        cartimpdao cd=new cartimpdao();
        cd.insert(c);
        List<cart> l=new ArrayList();
        l=cd.getCart();
        
        
       
    
    }
    
    
}
