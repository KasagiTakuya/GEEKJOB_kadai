<%-- 
    Document   : manu
    Created on : 2017/02/09, 15:24:19
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理メニュー</title>
    </head>
    <body>
        <%
      String ss = (String)session.getAttribute("Key");
      
      //直リンク禁止用処理　セッションがnullかng判定がついているとログインページに飛ばされてアクセスできない
      if(ss == "ng"||ss == null){
          session.setAttribute("Key","out");
          RequestDispatcher product = request.getRequestDispatcher("/login.jsp");
          product.forward(request, response);
      }
       String username = (String)session.getAttribute("username");
        out.println("ようこそ"+username+"さん"+"<br><br>");
        %>
       
        <input type="button" onclick="location.href='http://localhost:8080/zaiko/update.jsp'"value="商品管理メニュー"><br><br>
        <input type="button" onclick="location.href='http://localhost:8080/zaiko/allitem'"value="商品一覧表示"><br><br>
        <input type="button" onclick="location.href='http://localhost:8080/zaiko/logout'"value="ログアウト"><br><br>
        
    </body>
</html>
