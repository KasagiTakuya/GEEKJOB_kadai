<%-- 
    Document   : update
    Created on : 2017/02/09, 16:36:06
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品追加ページ</title>
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
        %>
       <form action="itemupdate"method="post">
       ID<br><input type="text" name="ID"><br>
       商品名<br><input type="text" name="name"><br>
       価格<br><input type="text" name="price"><br>
       <%//出来るのであればプルダウンメニューで商品種別を識別させたい%>
       <input type="submit">
       </from>
       <br>
       <input type="button" onclick="location.href='http://localhost:8080/zaiko/menu.jsp'"value="管理メニューへ">
    </body>
</html>
