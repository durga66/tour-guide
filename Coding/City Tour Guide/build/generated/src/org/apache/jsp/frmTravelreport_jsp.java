package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class frmTravelreport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    Connection conn=null;
    Statement st=null;
    ResultSet rs=null;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header1.jsp");
    _jspx_dependants.add("/ppTravel.jsp");
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
      out.write('\n');
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>journey</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("<ul class=\"sf-menu\">\n");
      out.write("  \n");
      out.write("<li><a href=\"frmTravel.jsp\"><font color=\"red\">Previous Page</font></a></li>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t \t  <center>\n");
      out.write("                             <image align=\"center\" src=\"images/tourism_name.jpg\" width=\"1200ft\" height=\"400ft\">\n");
      out.write("                         </center>\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t</body>\n");
      out.write("</html>\n");
      out.write('\n');
      out.write('\n');
      out.write("    \n");

     Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     st=conn.createStatement(); 
     rs=st.executeQuery("select * from tblTravel");

      out.write("\n");
      out.write("<html>\n");
      out.write("    <body bgcolor=\"pink\">\n");
      out.write("    <center>\n");
      out.write("        <h1>Travel Report</h1>\n");
      out.write("        <table border=\"2\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Travel Id</th>\n");
      out.write("                <th>Route Code</th>\n");
      out.write("                <th>City Code</th>\n");
      out.write("                <th>State Code</th>\n");
      out.write("                <th>City Name</th>\n");
      out.write("                <th>District Name</th>\n");
      out.write("                <th>Available Vehicles</th>\n");
      out.write("                <th>Remarks</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
 while(rs.next())
                {
             
      out.write("\n");
      out.write("             <tr>\n");
      out.write("                 <td>");
      out.print(rs.getString("travelid"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("routecode"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("citycode"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("statecode"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("cityname"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("distname"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("avehicles"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("remarks"));
      out.write("</td>\n");
      out.write("                 </tr>\n");
      out.write("             ");

                 }
              
      out.write("\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("    </center>\n");
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
