<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% if(!hs.getAttribute("name").equals("")&&!hs.getAttribute("year").equals("")&&!hs.getAttribute("month").equals("")&&
          !hs.getAttribute("day").equals("")&&!hs.getAttribute("type").equals("")&&!hs.getAttribute("tell").equals("")&&
          !hs.getAttribute("comment").equals("")){ %>
        <h1>登録確認</h1>
        名前:<%= hs.getAttribute("name")%><br>
        生年月日:<%= hs.getAttribute("year")+"年"+hs.getAttribute("month")+"月"+hs.getAttribute("day")+"日"%><br>
        種別:<%= hs.getAttribute("type")%><br>
        電話番号:<%= hs.getAttribute("tell")%><br>
        自己紹介:<%= hs.getAttribute("comment")%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい"> 
     <%  //はいならリザルト用に直リンク禁止用セッションに登録
         session.setAttribute("acc", (int) (Math.random() * 1000)); %>
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
        <%if(hs.getAttribute("name").equals("")){out.println("名前が入力されていません"+"<br>");} 
        if(hs.getAttribute("year").equals("")||hs.getAttribute("month").equals("")||hs.getAttribute("day").equals(""))
            {out.println("生年月日が入力されていません"+"<br>");} 
        if(hs.getAttribute("type").equals("")){out.println("種別が入力されていません"+"<br>");}
        if(hs.getAttribute("tell").equals("")){out.println("電話番号が入力されていません"+"<br>");}
        if(hs.getAttribute("comment").equals("")){out.println("自己紹介が入力されていません"+"<br>");} %>
    <% } %>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <%=////もしかしたらリンク要らない
          JumsHelper.getInstance().home()%>
    </body>
</html>
