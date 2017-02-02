<%-- 
    Document   : hyo1
    Created on : 2017/02/02, 11:09:37
    Author     : PCUser
--%>

<%@page import="java.util.*"%>
<%@page import="java.text.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
            
                                                              //空白入れたらちゃんと対応してくれる
       SimpleDateFormat A = new SimpleDateFormat("yyyy年MM月dd日 HH時mm分ss秒");
       //java.text.*;もインポートしないと使えないらしい
                       //年月日のところは任意で変更できる
                       
                   //newをNewと書いて反応しなくてしばらく悩んだので今後気を付けましょう
       Date date = new Date();

       
       String AA = A.format(date);
              
       out.println(AA);
       
        
       
        %>
    </body>
</html>
