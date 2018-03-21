package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import category.category;
import java.util.List;
import category.categoryimpdao;
import category.categorydao;

public final class category2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css\">\n");
      out.write("         <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("         <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js\"></script>\n");
      out.write("         <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\"></script> \n");
      out.write("         <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .table-wrapper-2 {\n");
      out.write("    display: block;\n");
      out.write("    max-height:auto  ;\n");
      out.write("    width: 100%;\n");
      out.write("    overflow-y: auto    ;\n");
      out.write("    \n");
      out.write("    -ms-overflow-style: -ms-autohiding-scrollbar;\n");
      out.write("}\n");
      out.write(" \n");
      out.write("        </style>\n");
      out.write("       \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        categoryimpdao cp=new categoryimpdao();
        List<category> list=cp.getCategory();
        
      out.write(" \n");
      out.write("        <div class=\"card\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("\n");
      out.write("        <div class=\"table-wrapper-2\" >\n");
      out.write("\n");
      out.write("        \n");
      out.write("            <table class=\"table\">\n");
      out.write("                <thead class=\"thead-dark\">\n");
      out.write("                    <tr>\n");
      out.write("      \n");
      out.write("                        <th>Id</th>\n");
      out.write("                        <th>Name</th>\n");
      out.write("                        <th>Description</th>\n");
      out.write("                        <th>Price</th>\n");
      out.write("                        <th>Category</th>\n");
      out.write("                        <th>Edit</th>\n");
      out.write("                        <th>delete</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write(" \n");
      out.write("        ");

            for( category c : list )
        {
         
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("     \n");
      out.write("                    <td>");
      out.print(c.getId());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getUsername());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getDescription());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getPrice());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getCategory());
      out.write("</td>\n");
      out.write("                    <td><a href=\"edcat.jsp?f_c_id=");
      out.print(c.getId());
      out.write("\"><i class=\"material-icons\" style=\"font-size:30px; \">edit</i></a> </td>\n");
      out.write("                    <td><a href=\"delcat.jsp?f_c_d_id=");
      out.print(c.getId());
      out.write("\"><i class=\"material-icons\" style=\"font-size:30px;\">delete</i></a></td>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                 </tbody>\n");
      out.write("            \n");
      out.write("                ");

                    }
                 
      out.write("\n");
      out.write("            \n");
      out.write("                </table>               \n");
      out.write("            \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
