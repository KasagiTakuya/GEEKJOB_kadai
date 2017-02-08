<%-- 
    Document   : index
    Created on : 2017/02/08, 14:55:40
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
       <form action="DB12"method="post">
      
       名前<br><input type="text" name="namae"><br>
       年齢<br><input type="text" name="age"><br>
       生年月日(入力例:2000-01-01)<br><input type="text" name="birth"><br>
       <%--全てを含む<input type="radio" name="radiob"value="all">何れかを含む<input type="radio" name="radiob"value="one"><br>--%>
       <input type="submit">
       </form>
    </body>
</html>
