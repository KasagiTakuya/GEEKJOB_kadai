<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
    //UserDataBeans udata = (UserDataBeans)session.getAttribute("udata");
%>
<jsp:useBean id="udata" scope="session" class="jums.UserDataBeans" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% String name = udata.getName();
       String year = udata.getyear();
       String month = udata.getmonth();
       String day = udata.getday();
       String type = udata.gettype();
       String tell = udata.gettell();
       String comment = udata.getcomment();
        if(name!=""&&year!=""&&month!=""&&day!=""&&type!=""&&tell!=""&&comment!=""){ %>
        <h1>登録確認</h1>
        名前:<%= name%><br>
        生年月日:<%= year+"年"+month+"月"+day+"日"%><br>
        種別:<%= type%><br>
        電話番号:<%= tell%><br>
        自己紹介:<%= comment%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="bc"  value="<%= hs.getAttribute("bc")%>">
            <input type="submit" name="yes" value="はい"> 
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
        <%if(hs.getAttribute("name").equals("")){out.println("名前が入力されていません"+"<br>");} 
        if(hs.getAttribute("year").equals("")||hs.getAttribute("month").equals("")||hs.getAttribute("day").equals(""))
          {out.println("生年月日が入力されていません"+"<br>");} 
        if(hs.getAttribute("type")==null){out.println("種別が入力されていません"+"<br>");}
        if(hs.getAttribute("tell").equals("")){out.println("電話番号が入力されていません"+"<br>");}
        if(hs.getAttribute("comment").equals("")){out.println("自己紹介が入力されていません"+"<br>");} %>
    <% } %>
        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
