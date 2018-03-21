package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import users.users;
import users.usersdao;
import users.usersimpdao;

public final class edu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js\"></script>\n");
      out.write("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            #nav_bar_h\n");
      out.write("            {\n");
      out.write("                margin-top: -40px;\n");
      out.write("                 width: 100%;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");

    int f_u_id=Integer.parseInt(request.getParameter("f_u_id"));
    System.out.println("value of id :"+f_u_id);
    usersdao ud=new usersimpdao();
   users u=ud.getUsers(f_u_id);


      out.write("\n");
      out.write("      \n");
      out.write("<script>\n");
      out.write("     $(document).ready(function() {\n");
      out.write("    $('#contact_form').bootstrapValidator({\n");
      out.write("      \n");
      out.write("        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later\n");
      out.write("        feedbackIcons: \n");
      out.write("                {\n");
      out.write("            valid: 'glyphicon glyphicon-ok',\n");
      out.write("            invalid: 'glyphicon glyphicon-remove',\n");
      out.write("            validating: 'glyphicon glyphicon-refresh'\n");
      out.write("                },\n");
      out.write("            fields: {\n");
      out.write("            first_name: {\n");
      out.write("                selector: \"#first_name\",\n");
      out.write("                validators: {\n");
      out.write("                        stringLength:\n");
      out.write("                                {\n");
      out.write("                               min: 2\n");
      out.write("                                },\n");
      out.write("                        notEmpty: {\n");
      out.write("                        message: 'Please Fill your first name'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("             last_name: {\n");
      out.write("                 selector: \"#last_name\",\n");
      out.write("                validators: {\n");
      out.write("                     stringLength: {\n");
      out.write("                        min: 2,\n");
      out.write("                    },\n");
      out.write("                    notEmpty: {\n");
      out.write("                        message: 'Please Fill your last name'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("             username:{\n");
      out.write("                 selector: \"#username\",\n");
      out.write("                validators:{\n");
      out.write("                    notEmpty: {\n");
      out.write("                        message: 'Please Fill This Feild'\n");
      out.write("                    }\n");
      out.write("                                    }\n");
      out.write("            },\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            password:{\n");
      out.write("                selector: \"#password\",\n");
      out.write("                validators: {\n");
      out.write("                    notEmpty: {\n");
      out.write("                        message: 'The password is required'\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            conpassword: {\n");
      out.write("                selector: \"#confirm_password\",\n");
      out.write("                validators: {\n");
      out.write("                    notEmpty: {\n");
      out.write("                        message: 'The confirm password is required'\n");
      out.write("                    },\n");
      out.write("                    identical:{\n");
      out.write("                    field : 'password',\n");
      out.write("                        message: 'Confirm Password incorrect !'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            email: {\n");
      out.write("                selector: \"#email\",\n");
      out.write("                validators: {\n");
      out.write("                    notEmpty: {\n");
      out.write("                        message: 'Please Fill your email address'\n");
      out.write("                    },\n");
      out.write("                       regexp: {\n");
      out.write("                        regexp: /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$/,\n");
      out.write("                        \n");
      out.write("                            message: 'Please Enter Valid Email '\n");
      out.write("                    }\n");
      out.write("                   \n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            contact:{\n");
      out.write("                selector: \"#contact\",\n");
      out.write("                validators:{\n");
      out.write("                    notEmpty: {\n");
      out.write("                        message: 'The Contact No is Required'\n");
      out.write("                    },\n");
      out.write("                       regexp: {\n");
      out.write("                        regexp: /^[7-9]{1}[0-9]{9,9}$/,\n");
      out.write("                        message: 'Contact Start with Numeric '\n");
      out.write("                    } \n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        })\n");
      out.write("        });\n");
      out.write("  \n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("    <br />\n");
      out.write("    <br />\n");
      out.write("    <body style=\"background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_788,w_1400/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg)\">\n");
      out.write("<div id=\"nav_bar_h\">\n");
      out.write("    <nav class=\"navbar navbar-default navbar-inverse\" role=\"navigation\" >\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("    <div class=\"navbar-header\" >\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\">FoodHub</a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("        <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("         <li><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("       \n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Products <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("            <li><a href=\"#\">veg</a></li>\n");
      out.write("            <li class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">non veg</a></li>\n");
      out.write("            <li class=\"divider\"></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><p class=\"navbar-text\">Already have an account?</p></li>\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><b>Login</b> <span class=\"caret\"></span></a>\n");
      out.write("            <ul id=\"login-dp\" class=\"dropdown-menu\">\n");
      out.write("                <li>\n");
      out.write("\t\t <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-md-12\">\n");
      out.write("\t\tLogin via\n");
      out.write("\t\t<div class=\"social-buttons\">\n");
      out.write("\t\t<a href=\"https://www.facebook.com\" class=\"btn btn-fb\"><i class=\"fa fa-facebook\"></i> Facebook </a>\n");
      out.write("\t\t<a href=\"https://www.twitter.com\" class=\"btn btn-tw\"><i class=\"fa fa-twitter\"></i> Twitter</a>\n");
      out.write("                </div>\n");
      out.write("                 or\n");
      out.write("\t\t<form class=\"form\" role=\"form\" method=\"post\" action=\"login\" accept-charset=\"UTF-8\" id=\"login-nav\">\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t <label class=\"sr-only\" for=\"exampleInputEmail2\">Email address</label>\n");
      out.write("\t\t <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail2\" placeholder=\"Email address\" required>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t<label class=\"sr-only\" for=\"exampleInputPassword2\">Password</label>\n");
      out.write("\t\t<input type=\"password\" class=\"form-control\" id=\"exampleInputPassword2\" placeholder=\"Password\" required>\n");
      out.write("                <div class=\"help-block text-right\"><a href=\"\">Forget the password ?</a></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t <button type=\"submit\" class=\"btn btn-primary btn-block\">Sign in</button>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("                <div class=\"checkbox\">\n");
      out.write("\t\t<label>\n");
      out.write("\t\t<input type=\"checkbox\"> keep me logged-in\n");
      out.write("\t\t</label>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"bottom text-center\">\n");
      out.write("\t\tNew here ? <a href=\"user1.jsp\"><b>Join Us</b></a>\n");
      out.write("                </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div><!-- /.navbar-collapse -->\n");
      out.write("  </div><!-- /.container-fluid -->\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("               <div class=\"container\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <form class=\"well form-horizontal\" action=\"up\" method=\"post\"  id=\"contact_form\">\n");
      out.write("<fieldset>\n");
      out.write("\n");
      out.write("<!-- Form Name -->\n");
      out.write("<legend><center>Re-Edit</center></legend>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">First Name</label>  \n");
      out.write("  <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("  <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input  name=\"username\" type=\"hidden\" value=\"");
      out.print(u.getId());
      out.write("\"/>\n");
      out.write("  <input  name=\"username\" placeholder=\"First Name\" value=\"");
      out.print(u.getFirst_name());
      out.write("\" class=\"form-control\" id=\"first_name\" onKeyPress=\"return ValidateAlpha3(event)\" type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\" >Last Name</label> \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("  <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("  <input name=\"username\" placeholder=\"Last Name\" value=\"");
      out.print(u.getLast_name());
      out.write("\" class=\"form-control\" id=\"last_name\" onKeyPress=\"return ValidateAlpha3(event)\" type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("<!-- Text input-->\n");
      out.write("       <div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Username</label>  \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("        <input name=\"username\" placeholder=\"Username\" value=\"");
      out.print(u.getUsername());
      out.write("\" class=\"form-control\" id=\"username\"  onKeyPress=\"return ValidateAlpha3(event)\" type=\"text\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("<!-- Text input-->\n");
      out.write("       \n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Password</label>  \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("        <input name=\"username\" placeholder=\"Passsword\" value=\"");
      out.print(u.getPassword());
      out.write("\" class=\"form-control\" id=\"password\" type=\"password\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write(" \n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Confirm Password</label>  \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("        <input   placeholder=\"Re-Enter Password\" class=\"form-control\" id=\"confirm_password\"  type=\"password\">\n");
      out.write("    </div>  \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Email</label>  \n");
      out.write("    <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-envelope\"></i></span>\n");
      out.write("        <input name=\"username\" placeholder=\"Email-address\" value=\"");
      out.print(u.getEmail());
      out.write("\" class=\"form-control\"  id=\"email\" type=\"text\">\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Text input-->\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"col-md-4 control-label\">Contact No.</label>  \n");
      out.write("   <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("    <div class=\"input-group\">\n");
      out.write("        <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-phone\"></i></span>\n");
      out.write("        <input name=\"username\" placeholder=\"+91\" value=\"");
      out.print(u.getContact_no());
      out.write("\" class=\"form-control\" id=\"contact\" type=\"number\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!-- Button -->\n");
      out.write("\n");
      out.write("<div class=\"form-group\">\n");
      out.write("          <label class=\"col-md-4 control-label\"></label>\n");
      out.write("            <div class=\"col-md-4\"><br>\n");
      out.write("            <button id=\"b3\" type=\"submit\" class=\"btn btn-success\" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class=\"glyphicon glyphicon-send\"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("</fieldset>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("    </div><!-- /.container -->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
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