<%-- 
    Document   : jsp2-4
    Created on : 2017/01/28, 15:35:52
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%!
        
               //デフォルト値の設定
               //今回の場合のaは必ず入力する数値、まずaをint定義
               //aの後に書いたものはデフォルト値(今回は5とfalse)となり、aの数値だけ入力しても後の数字も入力済として出力される
     Integer Rui(int a){
        return Rui(a,5,false);
    }
              //メソッド作成
              //booleanとはtrueかfalseのどちらかが入り条件分岐で使える             
     Integer Rui(int a,int b,boolean c){
        int kekka = 0;
        kekka = a * b;
             
     if(c == true){
        //戻り値
       return kekka = kekka * kekka; 
     }
     else{
       //戻り値
       //else書かなかったらちゃんと動かなかったので追加
     return kekka;
     }
    }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          boolean i = false;
                       //デフォルト値が設定されているのでa=3,b=5,C=falseでの結果が表示される
          out.println(Rui(3));
          i = true;
          out.println(Rui(3,5,i));
        %>
    </body>
</html>
