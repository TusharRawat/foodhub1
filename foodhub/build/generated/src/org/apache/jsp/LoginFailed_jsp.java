package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LoginFailed_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==\" crossorigin=\"anonymous\">\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==\" crossorigin=\"anonymous\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    \n");
      out.write("        <style>\n");
      out.write("           body, html {\n");
      out.write("    height: 100%;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-image: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card-container.card {\n");
      out.write("    max-width: 550px;\n");
      out.write("    \n");
      out.write("    padding: 20px 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn {\n");
      out.write("    font-weight: 700;\n");
      out.write("    height: 38px;\n");
      out.write("    -moz-user-select: none;\n");
      out.write("    -webkit-user-select: none;\n");
      out.write("    user-select: none;\n");
      out.write("    cursor: default;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*\n");
      out.write(" * Card component\n");
      out.write(" */\n");
      out.write(".card {\n");
      out.write("    background-color: #F7F7F7;\n");
      out.write("    /* just in case there no content*/\n");
      out.write("    padding: 20px 25px 30px;\n");
      out.write("    margin: 0 auto 25px;\n");
      out.write("    margin-top: -20px;\n");
      out.write("    /* shadows and rounded borders */\n");
      out.write("    -moz-border-radius: 2px;\n");
      out.write("    -webkit-border-radius: 2px;\n");
      out.write("    border-radius: 2px;\n");
      out.write("    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\n");
      out.write("    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\n");
      out.write("    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".profile-img-card {\n");
      out.write("    width: 96px;\n");
      out.write("    height: 96px;\n");
      out.write("    margin: 0 auto 10px;\n");
      out.write("    display: block;\n");
      out.write("    -moz-border-radius: 50%;\n");
      out.write("    -webkit-border-radius: 50%;\n");
      out.write("    border-radius: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*\n");
      out.write(" * Form styles\n");
      out.write(" */\n");
      out.write(".profile-name-card {\n");
      out.write("    font-size: 16px;\n");
      out.write("    font-weight: bold;\n");
      out.write("    text-align: center;\n");
      out.write("    margin: 10px 0 0;\n");
      out.write("    min-height: 1em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".reauth-email {\n");
      out.write("    display: block;\n");
      out.write("    color: #404040;\n");
      out.write("    line-height: 2;\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("    font-size: 14px;\n");
      out.write("    text-align: center;\n");
      out.write("    overflow: hidden;\n");
      out.write("    text-overflow: ellipsis;\n");
      out.write("    white-space: nowrap;\n");
      out.write("    -moz-box-sizing: border-box;\n");
      out.write("    -webkit-box-sizing: border-box;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-signin #inputEmail,\n");
      out.write(".form-signin #inputPassword {\n");
      out.write("    direction: ltr;\n");
      out.write("    height: 44px;\n");
      out.write("    font-size: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-signin input[type=email],\n");
      out.write(".form-signin input[type=password],\n");
      out.write(".form-signin input[type=text],\n");
      out.write(".form-signin button {\n");
      out.write("    width: 100%;\n");
      out.write("    display: block;\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("    z-index: 1;\n");
      out.write("    position: relative;\n");
      out.write("    -moz-box-sizing: border-box;\n");
      out.write("    -webkit-box-sizing: border-box;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-signin .form-control:focus {\n");
      out.write("    border-color: rgb(104, 145, 162);\n");
      out.write("    outline: 0;\n");
      out.write("    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);\n");
      out.write("    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn.btn-signin {\n");
      out.write("    /*background-color: #4d90fe; */\n");
      out.write("    background-color: rgb(104, 145, 162);\n");
      out.write("    /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/\n");
      out.write("    padding: 0px;\n");
      out.write("    font-weight: 700;\n");
      out.write("    font-size: 14px;\n");
      out.write("    height: 36px;\n");
      out.write("    -moz-border-radius: 3px;\n");
      out.write("    -webkit-border-radius: 3px;\n");
      out.write("    border-radius: 3px;\n");
      out.write("    border: none;\n");
      out.write("    -o-transition: all 0.218s;\n");
      out.write("    -moz-transition: all 0.218s;\n");
      out.write("    -webkit-transition: all 0.218s;\n");
      out.write("    transition: all 0.218s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn.btn-signin:hover,\n");
      out.write(".btn.btn-signin:active,\n");
      out.write(".btn.btn-signin:focus {\n");
      out.write("    background-color: rgb(12, 97, 33);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".forgot-password {\n");
      out.write("    color: rgb(104, 145, 162);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".forgot-password:hover,\n");
      out.write(".forgot-password:active,\n");
      out.write(".forgot-password:focus{\n");
      out.write("    color: rgb(12, 97, 33);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".social:hover {\n");
      out.write("     -webkit-transform: scale(1.1);\n");
      out.write("     -moz-transform: scale(1.1);\n");
      out.write("     -o-transform: scale(1.1);\n");
      out.write(" }\n");
      out.write(" .social {\n");
      out.write("     -webkit-transform: scale(0.8);\n");
      out.write("     /* Browser Variations: */\n");
      out.write("     \n");
      out.write("     -moz-transform: scale(0.8);\n");
      out.write("     -o-transform: scale(0.8);\n");
      out.write("     -webkit-transition-duration: 0.5s;\n");
      out.write("     -moz-transition-duration: 0.5s;\n");
      out.write("     -o-transition-duration: 0.5s;\n");
      out.write(" }\n");
      out.write("\n");
      out.write(" \n");
      out.write(" #social-fb:hover {\n");
      out.write("     color: #3B5998;\n");
      out.write(" }\n");
      out.write(" #social-tw:hover {\n");
      out.write("     color: #4099FF;\n");
      out.write(" }\n");
      out.write(" #social-gp:hover {\n");
      out.write("     color: #d34836;\n");
      out.write(" }\n");
      out.write(" #social-em:hover {\n");
      out.write("     color: #f39c12;\n");
      out.write(" }\n");
      out.write("    \n");
      out.write("body\n");
      out.write("{\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#login-dp\n");
      out.write("{\n");
      out.write("    min-width: 250px;\n");
      out.write("    padding: 14px 14px 0;\n");
      out.write("    overflow:hidden;\n");
      out.write("    background-color:rgba(255,255,255,.8);\n");
      out.write("}\n");
      out.write("#login-dp .help-block\n");
      out.write("{\n");
      out.write("    font-size:12px    \n");
      out.write("}\n");
      out.write("#login-dp .bottom\n");
      out.write("{\n");
      out.write("    background-color:rgba(255,255,255,.8);\n");
      out.write("    border-top:1px solid #ddd;\n");
      out.write("    clear:both;\n");
      out.write("    padding:14px;\n");
      out.write("}\n");
      out.write("#login-dp .social-buttons\n");
      out.write("{\n");
      out.write("    margin:12px 0    \n");
      out.write("}\n");
      out.write("#login-dp .social-buttons a\n");
      out.write("{\n");
      out.write("    width: 49%;\n");
      out.write("}\n");
      out.write("#login-dp .form-group\n");
      out.write("{\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("}\n");
      out.write(".btn-fb\n");
      out.write("{\n");
      out.write("    color: #fff;\n");
      out.write("    background-color:#3b5998;\n");
      out.write("}\n");
      out.write(".btn-fb:hover\n");
      out.write("{\n");
      out.write("    color: #fff;\n");
      out.write("    background-color:#496ebc \n");
      out.write("}\n");
      out.write(".btn-tw\n");
      out.write("{\n");
      out.write("    color: #fff;\n");
      out.write("    background-color:#55acee;\n");
      out.write("}\n");
      out.write(".btn-tw:hover\n");
      out.write("{\n");
      out.write("    color: #fff;\n");
      out.write("    background-color:#59b5fa;\n");
      out.write("}\n");
      out.write("@media(max-width:768px)\n");
      out.write("{\n");
      out.write("    #login-dp{\n");
      out.write("        background-color: inherit;\n");
      out.write("        color: #fff;\n");
      out.write("    }\n");
      out.write("#login-dp .bottom\n");
      out.write("{\n");
      out.write("        background-color: inherit;\n");
      out.write("        border-top:0 none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("#loader {\n");
      out.write("    bottom: 0;\n");
      out.write("    height: 175px;\n");
      out.write("    left: 0;\n");
      out.write("    margin: auto;\n");
      out.write("    position: absolute;\n");
      out.write("    right: 0;\n");
      out.write("    top: 0;\n");
      out.write("    width: 175px;\n");
      out.write("}\n");
      out.write("#loader {\n");
      out.write("    bottom: 0;\n");
      out.write("    height: 175px;\n");
      out.write("    left: 0;\n");
      out.write("    margin: auto;\n");
      out.write("    position: absolute;\n");
      out.write("    right: 0;\n");
      out.write("    top: 0;\n");
      out.write("    width: 175px;\n");
      out.write("}\n");
      out.write("#loader .dot {\n");
      out.write("    bottom: 0;\n");
      out.write("    height: 100%;\n");
      out.write("    left: 0;\n");
      out.write("    margin: auto;\n");
      out.write("    position: absolute;\n");
      out.write("    right: 0;\n");
      out.write("    top: 0;\n");
      out.write("    width: 87.5px;\n");
      out.write("}\n");
      out.write("#loader .dot::before {\n");
      out.write("    border-radius: 100%;\n");
      out.write("    content: \"\";\n");
      out.write("    height: 87.5px;\n");
      out.write("    left: 0;\n");
      out.write("    position: absolute;\n");
      out.write("    right: 0;\n");
      out.write("    top: 0;\n");
      out.write("    transform: scale(0);\n");
      out.write("    width: 87.5px;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+1) {\n");
      out.write("    transform: rotate(45deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+1)::before {\n");
      out.write("    animation: 0.8s linear 0.1s normal none infinite running load;\n");
      out.write("    background: #00ff80 none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+2) {\n");
      out.write("    transform: rotate(90deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+2)::before {\n");
      out.write("    animation: 0.8s linear 0.2s normal none infinite running load;\n");
      out.write("    background: #00ffea none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+3) {\n");
      out.write("    transform: rotate(135deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+3)::before {\n");
      out.write("    animation: 0.8s linear 0.3s normal none infinite running load;\n");
      out.write("    background: #00aaff none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+4) {\n");
      out.write("    transform: rotate(180deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+4)::before {\n");
      out.write("    animation: 0.8s linear 0.4s normal none infinite running load;\n");
      out.write("    background: #0040ff none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+5) {\n");
      out.write("    transform: rotate(225deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+5)::before {\n");
      out.write("    animation: 0.8s linear 0.5s normal none infinite running load;\n");
      out.write("    background: #2a00ff none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+6) {\n");
      out.write("    transform: rotate(270deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+6)::before {\n");
      out.write("    animation: 0.8s linear 0.6s normal none infinite running load;\n");
      out.write("    background: #9500ff none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+7) {\n");
      out.write("    transform: rotate(315deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+7)::before {\n");
      out.write("    animation: 0.8s linear 0.7s normal none infinite running load;\n");
      out.write("    background: magenta none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+8) {\n");
      out.write("    transform: rotate(360deg);\n");
      out.write("}\n");
      out.write("#loader .dot:nth-child(7n+8)::before {\n");
      out.write("    animation: 0.8s linear 0.8s normal none infinite running load;\n");
      out.write("    background: #ff0095 none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write("#loader .lading {\n");
      out.write("    background-image: url(\"../images/loading.gif\");\n");
      out.write("    background-position: 50% 50%;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    bottom: -40px;\n");
      out.write("    height: 20px;\n");
      out.write("    left: 0;\n");
      out.write("    position: absolute;\n");
      out.write("    right: 0;\n");
      out.write("    width: 180px;\n");
      out.write("}\n");
      out.write("@keyframes load {\n");
      out.write("100% {\n");
      out.write("    opacity: 0;\n");
      out.write("    transform: scale(1);\n");
      out.write("}\n");
      out.write("}\n");
      out.write("@keyframes load {\n");
      out.write("100% {\n");
      out.write("    opacity: 0;\n");
      out.write("    transform: scale(1);\n");
      out.write("}\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("    $( document ).ready(function() {\n");
      out.write("    // DOM ready\n");
      out.write("\n");
      out.write("    // Test data\n");
      out.write("    /*\n");
      out.write("     * To test the script you should discomment the function\n");
      out.write("     * testLocalStorageData and refresh the page. The function\n");
      out.write("     * will load some test data and the loadProfile\n");
      out.write("     * will do the changes in the UI\n");
      out.write("     */\n");
      out.write("    // testLocalStorageData();\n");
      out.write("    // Load profile if it exits\n");
      out.write("    loadProfile();\n");
      out.write("});\n");
      out.write("\n");
      out.write("/**\n");
      out.write(" * Function that gets the data of the profile in case\n");
      out.write(" * thar it has already saved in localstorage. Only the\n");
      out.write(" * UI will be update in case that all data is available\n");
      out.write(" *\n");
      out.write(" * A not existing key in localstorage return null\n");
      out.write(" *\n");
      out.write(" */\n");
      out.write("function getLocalProfile(callback){\n");
      out.write("    var profileImgSrc      = localStorage.getItem(\"PROFILE_IMG_SRC\");\n");
      out.write("    var profileName        = localStorage.getItem(\"PROFILE_NAME\");\n");
      out.write("    var profileReAuthEmail = localStorage.getItem(\"PROFILE_REAUTH_EMAIL\");\n");
      out.write("\n");
      out.write("    if(profileName !== null\n");
      out.write("            && profileReAuthEmail !== null\n");
      out.write("            && profileImgSrc !== null) {\n");
      out.write("        callback(profileImgSrc, profileName, profileReAuthEmail);\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/**\n");
      out.write(" * Main function that load the profile if exists\n");
      out.write(" * in localstorage\n");
      out.write(" */\n");
      out.write("function loadProfile() {\n");
      out.write("    if(!supportsHTML5Storage()) { return false; }\n");
      out.write("    // we have to provide to the callback the basic\n");
      out.write("    // information to set the profile\n");
      out.write("    getLocalProfile(function(profileImgSrc, profileName, profileReAuthEmail) {\n");
      out.write("        //changes in the UI\n");
      out.write("        $(\"#profile-img\").attr(\"src\",profileImgSrc);\n");
      out.write("        $(\"#profile-name\").html(profileName);\n");
      out.write("        $(\"#reauth-email\").html(profileReAuthEmail);\n");
      out.write("        $(\"#inputEmail\").hide();\n");
      out.write("        $(\"#remember\").hide();\n");
      out.write("    });\n");
      out.write("}\n");
      out.write("\n");
      out.write("/**\n");
      out.write(" * function that checks if the browser supports HTML5\n");
      out.write(" * local storage\n");
      out.write(" *\n");
      out.write(" * @returns {boolean}\n");
      out.write(" */\n");
      out.write("function supportsHTML5Storage() {\n");
      out.write("    try {\n");
      out.write("        return 'localStorage' in window && window['localStorage'] !== null;\n");
      out.write("    } catch (e) {\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/**\n");
      out.write(" * Test data. This data will be safe by the web app\n");
      out.write(" * in the first successful login of a auth user.\n");
      out.write(" * To Test the scripts, delete the localstorage data\n");
      out.write(" * and comment this call.\n");
      out.write(" *\n");
      out.write(" * @returns {boolean}\n");
      out.write(" */\n");
      out.write("function testLocalStorageData() {\n");
      out.write("    if(!supportsHTML5Storage()) { return false; }\n");
      out.write("    localStorage.setItem(\"PROFILE_IMG_SRC\", \"//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120\" );\n");
      out.write("    localStorage.setItem(\"PROFILE_NAME\", \"César Izquierdo Tello\");\n");
      out.write("    localStorage.setItem(\"PROFILE_REAUTH_EMAIL\", \"oneaccount@gmail.com\");\n");
      out.write("}\n");
      out.write("    $(document).ready(function(){\n");
      out.write("         $(\"#faltu\").hide();\n");
      out.write("         var myVar = setTimeout(myTimer, 5000);\n");
      out.write("          function myTimer()\n");
      out.write("         {\n");
      out.write("             $(\"#faltu\").slideDown(\"slow\");\n");
      out.write("             $(\"#loader\").hide();\n");
      out.write("             \n");
      out.write("         }\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_768,w_1366/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg); \">\n");
      out.write("        \n");
      out.write("            <div id=\"loader\" class=\"container\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div id=\"loader\">\n");
      out.write("    \t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"dot\"></div>\n");
      out.write("\t\t\t<div class=\"lading\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("    <div id=\"faltu\">\n");
      out.write("    <nav class=\"navbar navbar-default navbar-inverse\" role=\"navigation\">\n");
      out.write("   <div class=\"container-fluid\">\n");
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
      out.write("        <li class=\"active\"><a href=\"MainHomePage.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("         <li><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("       \n");
      out.write("       \n");
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
      out.write("\t\t <input type=\"email\" name=\"email\" class=\"form-control\" id=\"exampleInputEmail2\" placeholder=\"Email address\" required>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t<label class=\"sr-only\" for=\"exampleInputPassword2\">Password</label>\n");
      out.write("\t\t<input type=\"password\" name=\"password\" class=\"form-control\" id=\"exampleInputPassword2\" placeholder=\"Password\" required>\n");
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
      out.write("  \n");
      out.write(" </nav>\n");
      out.write("        \n");
      out.write("            <div class=\"container\">\n");
      out.write("                \n");
      out.write("        <div class=\"card card-container\">\n");
      out.write("            <h1 style=\"font-family:Book Antiqua;font-size: 36;color: black;\"><center> Please Enter Valid Data</center></h1>\n");
      out.write("            <br>\n");
      out.write("            <!-- <img class=\"profile-img-card\" src=\"//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120\" alt=\"\" /> -->\n");
      out.write("            <img id=\"profile-img\" class=\"profile-img-card\" src=\"//ssl.gstatic.com/accounts/ui/avatar_2x.png\" />\n");
      out.write("            <p id=\"profile-name\" class=\"profile-name-card\"></p>\n");
      out.write("            <form class=\"form-signin\" action=\"login\" method=\"post\">\n");
      out.write("                <span id=\"reauth-email\" class=\"reauth-email\"></span>\n");
      out.write("                <input type=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" name=\"email\" required autofocus>\n");
      out.write("               <br>\n");
      out.write("              \n");
      out.write("                <input type=\"password\" id=\"inputPassword\" class=\"form-control\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("     \n");
      out.write("               <br>\n");
      out.write("               \n");
      out.write("                <div id=\"remember\" class=\"checkbox\">\n");
      out.write("                    <label>\n");
      out.write("                      \n");
      out.write("                        <input type=\"checkbox\" value=\"remember-me\"> Remember me\n");
      out.write("                    </label>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("       <br>\n");
      out.write("               <button class=\"btn btn-lg btn-primary btn-block btn-signin\" type=\"submit\">Sign in</button>\n");
      out.write("            </form><!-- /form -->\n");
      out.write("     <br>\n");
      out.write("            <a href=\"#\" class=\"forgot-password\">\n");
      out.write("                <center>        Forgot the password?</center>\n");
      out.write("            </a>\n");
      out.write("        </div><!-- /card-container -->\n");
      out.write("    </div><!-- /container -->\n");
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
