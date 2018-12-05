package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class frmLocationreport1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    String citycode;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
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
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("<ul>\n");
      out.write("    <li><a href=\"index.jsp\"><font color=\"red\">Home</font></a></li>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t <center>\n");
      out.write("                             <image align=\"center\" src=\"images/tourism_name.jpg\" width=\"1200ft\" height=\"600ft\">\n");
      out.write("                         </center>\t\n");
      out.write("\t\t\t</body>\n");
      out.write("</html>\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');
   Class.forName("oracle.jdbc.driver.OracleDriver");
     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tourguide","durga");
     stmt=conn.createStatement();
    citycode=request.getParameter("txtcitycode");
    // out.println(citycode);
    //statecode="AP";
    rs=stmt.executeQuery("select * from tblLocation where citycode='"+citycode+"'");

      out.write("\n");
      out.write("<html>\n");
      out.write("<body>\n");
      out.write("    <center>\n");
      out.write("        <h1><b>Loaction Report</b></h1>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Location Code</th>\n");
      out.write("                <th>Location Name</th>\n");
      out.write("                <th>Place Code</th>\n");
      out.write("                <th>Famous</th>\n");
      out.write("                <th>Descrition</th>\n");
      out.write("                \n");
      out.write("                 <th>City Code</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
 while(rs.next())
                {
             
      out.write("\n");
      out.write("             <tr>\n");
      out.write("                 <td>");
      out.print(rs.getString("lcode"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("lname"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("placecode"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("famous"));
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("description"));
      out.write("</td>\n");
      out.write("               \n");
      out.write("                  <td>");
      out.print(rs.getString("citycode"));
      out.write("</td>\n");
      out.write("             </tr>\n");
      out.write("             ");

                 }
              
      out.write("\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
