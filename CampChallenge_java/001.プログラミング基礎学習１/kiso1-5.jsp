<%-- 
    Document   : kiso1-5
    Created on : 2017/01/25, 12:37:21
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int a = 1;
int b = 2;
int c = 3;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if (a == 1)
        {
            out.println("1です!");
                    }
        else if (a == 2)
        {
            out.println("プログラミングキャンプ!");
        
                    }
        else 
        {
            out.println("その他です!");
                    }
        %>
     </br>
             <%
        if (b == 1)
        {
            out.println("1です!");
                    }
        else if (b == 2)
        {
            out.println("プログラミングキャンプ!");
        
                    }
        else 
        {
            out.println("その他です!");
                    }
        %>   
      </br>
              <%
        if (c == 1)
        {
            out.println("1です!");
                    }
        else if (c == 2)
        {
            out.println("プログラミングキャンプ!");
        
                    }
        else 
        {
            out.println("その他です!");
                    }
        %>  
    </body>
</html>
