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
        <%//データを送りたい先のURLを入れる%>
       <form action="./data2.jsp"method="post">
       名前:<input type="text" name="txtName"><br>
       性別:男<input type="radio" name="radiob"value="男">女<input type="radio" name="radiob"value="女"><br>
       趣味:<textarea name="mulText"></textarea><br>
       <input type="submit" name="btnsubmit">
       
       </form>
 <%
   request.setCharacterEncoding("UTF-8");  
     
   String a = request.getParameter("txtName");
    String b = request.getParameter("radiob");
    String c = request.getParameter("mulText");
   
 out.println(a+"<br>");
 out.println(b+"<br>");
 out.println(c);
 %>
        
    </body>
</html>
