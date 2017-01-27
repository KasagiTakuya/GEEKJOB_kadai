<%-- 
    Document   : jsp2-3
    Created on : 2017/01/28, 0:03:27
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%!
        //hanteiに入った結果がkazuに入る。()の中のaはiの数字
        //今回受け取るkazuの結果が文字列なのでString,()の中の変数は数字なのでint
        String kazu(int a){
        String hantei=" ";
        
        if(a % 2 ==0);{
        hantei = "偶数です";
        }
        if(a == 0) {
            hantei = "0です。";
        }       
        if(a % 2 ==1) {
            hantei = "奇数です。";      
        }
        //↓戻り値
      return hantei;
    }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
             String A = " ";
             for(int i=0;i<11;i=i+1){
                 //kazu(任意の数字)での結果が処理されAに入る
                     //↓の渡す数字が引数
               A = kazu(i);
               out.println(i+"は"+A+"<br>");}
        %>
        </body>
</html>
