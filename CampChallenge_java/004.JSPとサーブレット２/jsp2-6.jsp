<%-- 
    Document   : jsp2-9
    Created on : 2017/01/28, 18:49:17
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%!
    //メモ　メソッドを複数作って、out.println(メソッド1(),2(),3,4)という形にする
    //関係ないメモ システムとしてはIDが1なら1の対象のデータを返すみたいなのに応用できるかも
    //caseとバブルソートで実現できる？
    
    //IDを返すするメソッド
    int ID(int A){
        int a = 0;
        switch(A){
            case 1:
                a = 46;
                break;
            case 2:
                a = 7;
                break;
            case 3:
                a = 12;
                break;
        }
    return a;
    }
    
    //名前を戻すメソッド
    String name(int A){
            String b = " ";
        switch(A){
            case 1:
                b = "土谷";
                break;
            case 2:
                b = "山崎";
                break;
            case 3:
                b = "草野";
                break;
        }
    return b;
    }
    
    String brth(int A){
            String c = " ";
        switch(A){
            case 1:
                c = "1986/01/11";
                break;
            case 2:
                c = "1987/10/31";
                break;
            case 3:
                c = "1999/05/27";
                break;
        }
    return c;
    }
    
        String zyu(int A){
            String d = " ";
        switch(A){
            case 1:
                d = "大分";
                break;
            case 2:
                d = "名古屋";
                break;
            case 3:
                d = "宮崎";
                break;
        }
    return d;
    } 
    
    //箱作れば対象の場所に保管してあるデータを返してくれるのを作れる？
    
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           //今回探したい人のデータの数字が1だった場合1を指定すれば全部呼び出せるように設定
        int a = 1;
        out.println("<br>名前:"+name(a)+"<br>誕生日:"+brth(a)+"<br>住所:"+zyu(a)); 
        a = 2;
        out.println("<br>名前:"+name(a)+"<br>誕生日:"+brth(a)+"<br>住所:"+zyu(a));
        a = 3;
        out.println("<br>名前:"+name(a)+"<br>誕生日:"+brth(a)+"<br>住所:"+zyu(a));
        %>
    </body>
</html>
