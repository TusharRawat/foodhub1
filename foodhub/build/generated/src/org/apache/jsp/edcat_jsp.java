package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import category.category;
import category.categoryimpdao;
import category.categorydao;

public final class edcat_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js\"></script> \n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><h1>Re-Edit The Data</h1></center>\n");
      out.write("    ");

    int f_c_id=Integer.parseInt(request.getParameter("f_c_id"));
    categorydao cd=new categoryimpdao();
    category c=cd.getCategory(f_c_id);
    
    
      out.write("\n");
      out.write("                      <form action=\"updateproduct\" method=\"post\">\n");
      out.write("    \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Enter Name\" name=\"username\" value=\"");
      out.print(c.getUsername());
      out.write("\" class=\"form-control\"/>\n");
      out.write("                 </div>\n");
      out.write("              </div>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Enter Description\" name=\"username\" value=\"");
      out.print(c.getDescription());
      out.write("\" class=\"form-control\"/>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("<br>\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\">₹</span>\n");
      out.write("  <input type=\"text\" name=\"username\" placeholder=\"price\"  value=\"");
      out.print(c.getPrice());
      out.write("\" class=\"form-control\" aria-label=\"Amount (to the nearest dollar)\">\n");
      out.write("</div>\n");
      out.write("          \n");
      out.write("            <select class=\"icons\" name=\"username\" >\n");
      out.write("         \n");
      out.write("           \n");
      out.write("            \n");
      out.write("                <option value=\"");
      out.print(c.getCategory());
      out.write("\"  class=\"circle\" >");
      out.print(c.getCategory());
      out.write("</option>\n");
      out.write("            </select>\n");
      out.write("             </div>\n");
      out.write("  \n");
      out.write("\n");
      out.write(" \n");
      out.write("<br>\n");
      out.write("<div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\" style=\"text-align: center\">\n");
      out.write("                    <input type=\"submit\" value=\"update\" class=\"btn btn-success\"/>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        \n");
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
