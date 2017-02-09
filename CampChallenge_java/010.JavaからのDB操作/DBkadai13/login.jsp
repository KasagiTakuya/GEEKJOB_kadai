<%-- 
    Document   : index
    Created on : 2017/02/08, 15:52:44
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ログイン画面</title>
    </head>
    <body>
       <%
       out.println("<b>"+"ログイン画面"+"</b>"+"<br>"+"<br>");
       
      
                   //ここで型を指定しないとオブジェクト型を取得したことになって使えない 
      String ss = (String)session.getAttribute("Key");
       
      if(ss == "ng"){
      out.println("ログインに失敗しました"+"<br>"+"<br>");
      }
      
      if(ss == "out"){
      out.println("不正なアクセスです!"+"<br>"+"<br>");
      }
       %>
       <form action="/zaiko/cheak"method="post"> 
       ユーザー名(氏名をスペース無しで入力)<br>
       <input type="text" name="user"><br>
       パスワード(半角英数字)<br>
       <input type="password" name="pass"><br>
       <br>
       <input type="submit" value="ログイン">　　<input type="reset" value="リセット">
       </form>
    </body>
</html>
