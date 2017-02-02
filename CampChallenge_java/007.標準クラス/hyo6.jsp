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
            //仮のアドレス
        String a = "kari@gmail.com";
        //@の位置を数値で取得
        int b = a.indexOf("@");
                   //取得した@の位置を数字として入れ、そこから表示させている
                   //このままだと@も表示されるので+1する
        out.println(a.substring(b+1));
               %>
    </body>
</html>
