package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>City Tour Guide</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"icon\" href=\"images/favicon.ico\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/favicon.ico\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/slider.css\">\n");
      out.write("<script src=\"js/jquery.js\"></script>`\n");
      out.write("<script src=\"js/jquery-migrate-1.1.1.js\"></script>\n");
      out.write("<script src=\"js/superfish.js\"></script>\n");
      out.write("<script src=\"js/sForm.js\"></script>\n");
      out.write("<script src=\"js/jquery.jqtransform.js\"></script>\n");
      out.write("<script src=\"js/jquery.equalheights.js\"></script>\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"js/tms-0.4.1.js\"></script>\n");
      out.write("<script src=\"js/jquery-ui-1.10.3.custom.min.js\"></script>\n");
      out.write("<script src=\"js/jquery.ui.totop.js\"></script>\n");
      out.write("<script>\n");
      out.write("$(window).load(function () {\n");
      out.write("    $('.slider')._TMS({\n");
      out.write("        show: 0,\n");
      out.write("        pauseOnHover: false,\n");
      out.write("        prevBu: '.prev',\n");
      out.write("        nextBu: '.next',\n");
      out.write("        playBu: false,\n");
      out.write("        duration: 800,\n");
      out.write("        preset: 'random',\n");
      out.write("        pagination: false, //'.pagination',true,'<ul></ul>'\n");
      out.write("        pagNums: false,\n");
      out.write("        slideshow: 8000,\n");
      out.write("        numStatus: false,\n");
      out.write("        banners: true,\n");
      out.write("        waitBannerAnimation: false,\n");
      out.write("        progressBar: false\n");
      out.write("    });\n");
      out.write("    $(\"#tabs\").tabs();\n");
      out.write("    $().UItoTop({\n");
      out.write("        easingType: 'easeOutQuart'\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"js/html5shiv.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" media=\"screen\" href=\"css/ie.css\">\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write(" \n");
      out.write("<header>\n");
      out.write("       \n");
      out.write("  <div class=\"container_12\">\n");
      out.write("    <div class=\"grid_12\">\n");
      out.write("        \n");
      out.write("      <h1><a href=\"index.jsp\"><img src=\"images/logo.png\" alt=\"\"></a></h1>\n");
      out.write("      <div class=\"clear\"></div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"menu_block\">\n");
      out.write("      <nav>\n");
      out.write("        <ul class=\"sf-menu\">\n");
      out.write("          \n");
      out.write("          <li class=\"current\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("       <li><a href=\"frmStatesreport1.jsp\">Place</a></li>\n");
      out.write("          <li><a href=\"frmTouristneedsreport1.jsp\">Needs</a></li>\n");
      out.write("          <li><a href=\"frmRoutereport1.jsp\">Route</a></li>\n");
      out.write("           <li><a href=\"frmTravelreport1.jsp\">Travels</a></li>\n");
      out.write("              <li><a href=\"rating.jsp\">Rating</a></li>\n");
      out.write("             <li><a href=\"gallery.html\">Gallery</a></li>\n");
      out.write("             </ul>\n");
      out.write("         </nav>\n");
      out.write("       \n");
      out.write("      <div class=\"clear\"></div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clear\"></div>\n");
      out.write("     \n");
      out.write("  </div>\n");
      out.write("     \n");
      out.write("</header>\n");
      out.write("     \n");
      out.write("<div class=\"main\">\n");
      out.write("  <div class=\"container_12\">\n");
      out.write("    <div class=\"grid_12\">\n");
      out.write("      <div class=\"slider-relative\">\n");
      out.write("        <div class=\"slider-block\">\n");
      out.write("          <div class=\"slider\"> <a href=\"#\" class=\"prev\"></a><a href=\"#\" class=\"next\"></a>\n");
      out.write("            <ul class=\"items\">\n");
      out.write("              <li><img src=\"images/slide.jpg\" alt=\"\">\n");
      out.write("                <div class=\"banner\">\n");
      out.write("                  <div>THERE ARE PLENTY OF PLACES</div>\n");
      out.write("                  <br>\n");
      out.write("                  <span> that are worth seeing</span> </div>\n");
      out.write("              </li>\n");
      out.write("              <li><img src=\"images/slide1.jpg\" alt=\"\"></li>\n");
      out.write("              <li><img src=\"images/slide2.jpg\" alt=\"\"></li>\n");
      out.write("              <li><img src=\"images/slide3.jpg\" alt=\"\"></li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"content\">\n");
      out.write("    <div class=\"container_12\">\n");
      out.write("      <div class=\"grid_12\">\n");
      out.write("         \n");
      out.write("        <h3>Top Destinations</h3>\n");
      out.write("         \n");
      out.write("      </div>\n");
      out.write("      <div class=\"boxes\">\n");
      out.write("        <div class=\"grid_4\">\n");
      out.write("          <figure>\n");
      out.write("            <div><img src=\"images/page1_img1.jpg\" alt=\"\"></div>\n");
      out.write("            <figcaption>\n");
      out.write("              <h3>Venice</h3>\n");
      out.write("              Lorem ipsum dolor site geril amet, consectetur cing eliti. Suspendisse nulla leo mew dignissim eu velite a rew qw vehicula lacinia arcufasec ro. Aenean lacinia ucibusy fase tortor ut feugiat. Rabi tur oliti aliquam bibendum olor quis malesuadivamu. <a href=\"#\" class=\"btn\">Details</a> </figcaption>\n");
      out.write("          </figure>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"grid_4\">\n");
      out.write("          <figure>\n");
      out.write("            <div><img src=\"images/page1_img2.jpg\" alt=\"\"></div>\n");
      out.write("            <figcaption>\n");
      out.write("              <h3>New York</h3>\n");
      out.write("              Psum dolor sit ametylo gerto consectetur ertori hykill holit adipiscing lity. Donecto rtopil osueremo\tkollit asec emmodem geteq tiloli. Aliquam dapibus neclol nami wertoli elittro eget vulpoli no\n");
      out.write("              utaterbil congue turpis in su. <a href=\"#\" class=\"btn\">Details</a> </figcaption>\n");
      out.write("          </figure>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"grid_4\">\n");
      out.write("          <figure>\n");
      out.write("            <div><img src=\"images/page1_img3.jpg\" alt=\"\"></div>\n");
      out.write("            <figcaption>\n");
      out.write("              <h3>Paris</h3>\n");
      out.write("              Lorem ipsum dolor site geril amet, consectetur cing eliti. Suspendisse nulla leo mew dignissim eu velite a rew qw vehicula lacinia arcufasec ro. Aenean lacinia ucibusy fase tortor ut feugiat. Rabi tur oliti aliquam bibendum olor quis malesuadivamu. <a href=\"#\" class=\"btn\">Details</a> </figcaption>\n");
      out.write("          </figure>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_8\">\n");
      out.write("        <div id=\"tabs\">\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"#tabs-1\">About</a></li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("          <div class=\"clear\"></div>\n");
      out.write("         \n");
      out.write("          <div class=\"tab_cont\" id=\"tabs-1\"> <img src=\"images/page1_img4.jpg\" alt=\"\">\n");
      out.write("             \n");
      out.write("            <div class=\"extra_wrapper\">\n");
      out.write("               \n");
      out.write("              <div class=\"text1\">City Tour Guide</div>\n");
      out.write("              <p class=\"style1\">City Tour Guide is provides the all the information about the cities. It is very useful for the tourism system, in current tourism system, whenever a tourist visits famous spots, to know more about the place the hires a guide. The hired guide then narrates history of the place. The proposed system doesn?t require a physical guide. The mobile application installed on the user mobile then tourist can act as a guide. This application contains the information about famous places like temples, parks, beaches and etc.The android based city guide system has more practical significance. \n");
      out.write("              <div class=\"clear \"></div>\n");
      out.write("              </div>\n");
      out.write("          \n");
      out.write("               <div align=\"center\"><a href=\"frmAdminLogin.jsp\"><font color=\"blue\">Admin</font></a></div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("        \n");
      out.write("      <div class=\"grid_4\">\n");
      out.write("        <div class=\"newsletter_title\">Famous States</div>\n");
      out.write("        <div class=\"n_container\">\n");
      out.write("        \n");
      out.write("          <ul class=\"list\">\n");
      out.write("            <li><a href=\"#\">Andhra Pradesh</a></li>\n");
      out.write("            <li><a href=\"#\">Arunachal Pradesh</a></li>\n");
      out.write("            <li><a href=\"#\">Assam</a></li>\n");
      out.write("            <li><a href=\"#\">Delhi</a></li>\n");
      out.write("            <li><a href=\"#\">Goa</a></li>\n");
      out.write("            <li><a href=\"#\">Himachal Pradesh</a></li>\n");
      out.write("            <li><a href=\"#\">Manipur</a></li>\n");
      out.write("             <li><a href=\"#\">Uther Pradesh</a></li>\n");
      out.write("             <li><a href=\"#\">Kerala</a></li>\n");
      out.write("          </ul>\n");
      out.write("         \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clear\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("      \n");
      out.write("  <div class=\"bottom_block\">\n");
      out.write("    <div class=\"container_12\">\n");
      out.write("      <div class=\"grid_2 prefix_2\">\n");
      out.write("         \n");
      out.write("            \n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"#\">FAQS Page</a></li>\n");
      out.write("          <li><a href=\"#\">People Say</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_2\">\n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"#\">Useful links</a></li>\n");
      out.write("          <li><a href=\"#\">Partners</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_2\">\n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"#\">Insurance</a></li>\n");
      out.write("          <li><a href=\"#\">Family Travel</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"grid_2\">\n");
      out.write("   \n");
      out.write("        <h4>Contact Us:</h4>\n");
      out.write("        TEL: 96-42-96-22-55<br>\n");
      out.write("        <a href=\"#\">durgarao5107@gmail.com</a> </div>\n");
      out.write("      <div class=\"clear\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<footer>\n");
      out.write("    \n");
      out.write("  <div class=\"container_12\">\n");
      out.write("    <div class=\"grid_12\">\n");
      out.write("          <div>\n");
      out.write("              ");

              Integer counter=(Integer)application.getAttribute("visits");
              if(counter==null||counter==0)
                  counter=1;
            else
              counter=counter+1;
              application.setAttribute("visits",counter);
              
      out.write("\n");
      out.write("              <img align=\"left\" src=\"images/cart.png\"><br>\n");
      out.write("              <font color=\"red\">  <strong>App Opened:</strong><br/>");
out.println(counter);
      out.write(" items\n");
      out.write("          </font>\n");
      out.write("          </div>\n");
      out.write("      <div class=\"socials\"> <a href=\"#\"></a> <a href=\"#\"></a> <a href=\"#\"></a> <a href=\"#\"></a> </div>\n");
      out.write("      <div class=\"copy\"> Journey &copy; 2045 | <a href=\"#\">Privacy Policy</a> | Design by:K D R Comapny</a> </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clear\"></div>\n");
      out.write("  </div>\n");
      out.write("</footer>\n");
      out.write("</body>\n");
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
