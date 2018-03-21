package CartServlet;

import cart.cart;
import cart.cartdao;
import cart.cartimpdao;
import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class del_cart extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    int del_cart_id=Integer.parseInt(req.getParameter("id"));
            System.out.println("VALUE ARE :"+del_cart_id);
             cartdao cd=new cartimpdao();
                cd.delete(del_cart_id);
                resp.sendRedirect("MainHomePage.jsp");
         }
    
}
