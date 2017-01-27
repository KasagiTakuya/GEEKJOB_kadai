<%-- 
    Document   : jsp2-2
    Created on : 2017/01/27, 17:41:25
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
       
       <%!
           //メソッド
           //戻り値
           //この場合だとString定義のnamaeにreturn以降の分を入れますということ
        String namae(){
            return "氏名:笠木拓哉<br>"+"生年月日:1992/03/06<br>"+"自己紹介:こんにちは<br><br>";
                                   }
        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

        <%
            //proにnamaeメソッドに入ってる文を入れる
            String pro = namae();
        //メモ:10回繰り返しはfor文で
        for(int i=1;i<=10;i=i+1){
        out.println(i + "回目<br>");   
        out.println(pro);
        
        }
        %>
    </body>
</html>
