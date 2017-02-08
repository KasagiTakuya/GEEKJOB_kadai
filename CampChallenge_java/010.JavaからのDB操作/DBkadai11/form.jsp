<%-- 
    Document   : index
    Created on : 2017/02/08, 14:45:03
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
              <form action="DB11"method="post">
       更新するID<br><input type="text" name="ID"><br>
       名前<br><input type="text" name="name"><br>
       電話番号(入力例:090-1111-2222)<br><input type="text" name="tell"><br>
       年齢<br><input type="text" name="age"><br>
       生年月日(入力例:2000-01-01)<br><input type="text" name="birth"><br>
       <input type="submit">
       </form>
    </body>
</html>
