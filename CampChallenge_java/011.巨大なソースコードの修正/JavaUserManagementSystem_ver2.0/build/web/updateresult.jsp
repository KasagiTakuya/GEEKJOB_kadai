<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS更新結果画面</title>
    </head>
    
        <h1>変更結果</h1><br>
        名前:<%= udd.getName()%><br>
        生年月日:<%= udd.getBirthday()%><br>
        種別:<%= udd.getType()%><br>
        電話番号:<%= udd.getTell()%><br>
        自己紹介:<%= udd.getComment()%><br>
        以上の内容で登録しました。<br>
    </body>
    <form action="ResultDetail" method="POST">
    <input type="submit" name="NO" value="詳細画面に戻る"style="width:130px">
    <input type="hidden" name="id" value="<%=udd.getUserID()%>"><br>
    <%=jh.home()%>
    
</html>
