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
        
        Calendar A = Calendar.getInstance();
        //日付情報を入れたら下記の表記方法が出来る
        A.set(2016,10,4,10,0,0);
        int Y = A.get(Calendar.YEAR);
        int m = A.get(Calendar.MONTH)+1;
        int d = A.get(Calendar.DAY_OF_MONTH);
        int x = A.get(Calendar.HOUR_OF_DAY);
        int y = A.get(Calendar.MINUTE);
        int z = A.get(Calendar.SECOND);
        
         
       //年-月-日 時:分:秒       
       out.println(Y+"年"+m+"月"+d+"日 "+x+"時"+y+"分"+z+"秒");
       
        
       
        %>
    </body>
</html>
