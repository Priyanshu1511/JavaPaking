<%-- 
    Document   : welcome
    Created on : 7 Dec, 2018, 9:07:20 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html>  
    <body>  
    <%   
      
    String name=request.getParameter("uname");  
    out.print("Welcome "+name);  
      
    pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);  
   out.print(" <a href='second.jsp'>second jsp page</a>");
       
      
    %>  
    </body>  
    </html>  
