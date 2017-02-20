<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans"%>
<%
    HttpSession hs = request.getSession();
    UserDataBeans udata = (UserDataBeans)hs.getAttribute("udata");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        名前:<%= udata.getname()%><br>
        生年月日:<%= udata.getyear()+"年"+udata.getmonth()+"月"+udata.getday()+"日"%><br>
        種別:<%= udata.gettype()%><br>
        電話番号:<%= udata.gettell()%><br>
        自己紹介:<%= udata.getcomment()%><br>
        以上の内容で登録しました。<br>
        <%=JumsHelper.getInstance().home()%>
        
       
                               
    </body>
</html>
