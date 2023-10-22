<%-- 
    Document   : second
    Created on : 7 Dec, 2018, 9:08:50 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html>  
    <body>  
    <%   
      
    String name=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);  
    out.print("Hello "+name);  
      
    %>  
    </body>  
    </html>  
