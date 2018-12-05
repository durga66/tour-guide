package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frmCities_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header1.jsp");
  }

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

      out.write('\n');
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>journey</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<ul class=\"sf-menu\">\n");
      out.write("    <br><li><a href=\"index.jsp\"><font color=\"red\">Home</font></a></li></br>\n");
      out.write("    <li><a href=\"Admin.jsp\"><font color=\"red\">Back to Admin</font></a></li>\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("         \t\n");
      out.write("\t\t\t</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>journey</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("          <center>\n");
      out.write("                             <image align=\"center\" src=\"images/tourism_name.jpg\" width=\"1200ft\" height=\"600ft\">\n");
      out.write("                         </center>\t\n");
      out.write("\t\t\t<div align=\"center\">\n");
      out.write("     <h1>Cities Information</h1>\n");
      out.write("     <div align=\"center\">\n");
      out.write("        <font size=\"8\">\n");
      out.write("        <a href=\"frmCitiesinsert.jsp\">Add Cities</a><br>\n");
      out.write("<a href=\"frmCitiesdelete.jsp\">Delete Cities</a><br>\n");
      out.write("<a href=\"frmCitiesupdate.jsp\">Update Cities</a><br>\n");
      out.write("<a href=\"frmCitiesselect.jsp\">Select Cities</a><br>\n");
      out.write("<a href=\"frmCitiesreport.jsp\">Report Cities</a><br>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t</font>\n");
      out.write("     </div>\t\n");
      out.write("\t\t\t</body>\n");
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
