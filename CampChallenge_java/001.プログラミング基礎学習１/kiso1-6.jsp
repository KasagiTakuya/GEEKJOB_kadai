<%-- 
    Document   : kiso1-6
    Created on : 2017/01/25, 12:56:25
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String a = request.getParameter("namae"); //商品名を入れる箱
String b = request.getParameter("kazu"); // 個数を入れる箱
String c = request.getParameter("kei"); // 総額を入れる箱

        //数値型に変換
 int A = Integer.parseInt(a);
 int B = Integer.parseInt(b);
 int sogaku = Integer.parseInt(c);

        
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String shohin = " ";
            //商品名表示判断
            if(A == 1)
            {
                shohin = "雑貨";           
                        }
            else if(A == 2)
            {
                shohin = "生鮮食品";
                        }
            else
            {
                 shohin = "その他";
                        }  
            

            out.println(shohin);
            %>
     </br>
            <% 
            out.println(" 総額:" + sogaku);
            %>
     </br>
            <%
            out.println(" 1個あたり:" + sogaku/B);
            %>
     </br>
            <%
           double p = 0;
            if(sogaku >= 5000) {
                p = sogaku * 0.05;
            }
            else if(sogaku >= 3000){
                p = sogaku * 0.04;
            }
            
            //ポイントが付くときだけ表示させたい
            if(p > 0){
            out.println("今回のポイント:" + (int)p);
            }
            %>     
       
    </body>
</html>
