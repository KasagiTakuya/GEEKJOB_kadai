<%-- 
    Document   : kiso1-4
    Created on : 2017/01/25, 12:24:57
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int A = 10;
final int B = 5 ; 
int C = 3;
final int D = 2;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%out.println(A+B);%>
        </br>
        <%out.println(A-B);%>
        </br>
        <%out.println(A*B);%>
        </br>
        <%out.println(A/B);%>
        </br>
        <%out.println(C%D);%>
    </body>
</html>
