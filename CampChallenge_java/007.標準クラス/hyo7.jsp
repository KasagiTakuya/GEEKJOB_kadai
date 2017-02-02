<%-- 
    Document   : hyo5
    Created on : 2017/02/02, 13:37:42
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
        String a = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
       
        //一気には出来ないみたいなので、Uをうに変換したのちにIをいに変換して表示している
        a = a.replace("U","う");
        out.println(a.replace("I","い"));
        
               %>
    </body>
</html>
