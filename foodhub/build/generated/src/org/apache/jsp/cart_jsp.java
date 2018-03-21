package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import cart.cart;
import java.util.List;
import cart.cartdao;
import cart.cartimpdao;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("              ");

          
          cartdao ctd=new cartimpdao();
          List<cart> lc=ctd.getCart();
         
      out.write("\n");
      out.write("                 <div class=\"card\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("\n");
      out.write("        <div class=\"table-wrapper-2\" >\n");
      out.write("\n");
      out.write("        \n");
      out.write("            <table class=\"table\">\n");
      out.write("                <thead class=\"thead-dark\">\n");
      out.write("                    <tr>\n");
      out.write("                        \n");
      out.write("                        <th>Image</th>\n");
      out.write("                        <th>Product_Name</th>\n");
      out.write("                        <th>Description</th>\n");
      out.write("                        <th>Price</th>\n");
      out.write("                        \n");
      out.write("                        <th>Quantity</th>\n");
      out.write("                        \n");
      out.write("                        <th>Delete</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("\n");
      out.write("         ");

             for(cart cnn : lc )
        {
            
         
      out.write("\n");
      out.write(" \n");
      out.write("                <tr class=\"delete_cart");
      out.print(cnn.getId());
      out.write("\" id=\"ajax_id\">\n");
      out.write("     \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <td><img style=\"width:100%;height: auto;\" id=\"ajax_image\"></td>\n");
      out.write("                    \n");
      out.write("                    <td id=\"ajax_food_item\"></td>\n");
      out.write("                    <td id=\"ajax_description\"></td>\n");
      out.write("                    <td id=\"ajax_price\"></td>\n");
      out.write("                    <td id=\"ajax_quantity\"></td>\n");
      out.write("                    <td><a href=# id=\"");
      out.print(cnn.getId());
      out.write("\"><i class=\"material-icons\" style=\"font-size:30px;\">delete</i></a></td>\n");
      out.write("                    <script>\n");
      out.write("              $(document).ready(function() {\n");
      out.write("        $(\"#");
      out.print(cnn.getId());
      out.write("\").click(function() {\n");
      out.write("            var id = \"");
      out.print(cnn.getId());
      out.write("\";\n");
      out.write("            \n");
      out.write("            if (confirm(\"Are You Sure Want to Delete This?\")) {\n");
      out.write("                $.ajax({\n");
      out.write("                    type: \"POST\",\n");
      out.write("                    url: \"del_cart\",\n");
      out.write("                    data: ({\n");
      out.write("                        id: id\n");
      out.write("                    }),\n");
      out.write("                    cache: false,\n");
      out.write("                    success: function(html) {\n");
      out.write("                        $(\".delete_cart\" + id).fadeOut('slow');\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            } else {\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("            </script>\n");
      out.write("        \n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("             ");

                    }
                 
      out.write("\n");
      out.write("            \n");
      out.write("                  </tbody>\n");
      out.write("               \n");
      out.write("                </table>               \n");
      out.write("                \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
