<%-- 
    Document   : data1
    Created on : 2017/02/03, 10:51:45
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
       <form action="./data1.jsp"method="post">
       名前:<input type="text" name="txtName"><br>
       性別:男<input type="radio" name="radioSample">女<input type="radio" name="radioSample"><br>
       趣味:<textarea name="mulText"></textarea>
       </form>
    </body>
</html>
