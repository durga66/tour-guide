<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("Id"," ");
    session.invalidate();
    response.sendRedirect("index.html");
%>