<%-- 
    Document   : kiso2-soinsu
    Created on : 2017/01/26, 14:37:39
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
       
        <%
        //クエリゾーン
        String a = request.getParameter("kazu"); 
        
        int A = Integer.parseInt(a);
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           //元の値表を示するだけ
        out.println("元の値" + A);
        %>
        </br>
        <%
        //素因数分解ゾーン
            
            //A = 奇数 になったらストップ 
      out.println("1ｹﾀの素因数:");
          while (A % 2 == 0){
             out.println(2 + " ");
             A = A / 2;
            }
          
          
      for (int x = 3; x < 9; x =x + 2) {
        //3なら3で余りが出るまで割ったらループでてforに通して5になる
        while (A % x == 0) {
        out.print(x + " ");
        A =A / x;
                         }
                                        }
      if (A > 1){
          if (A < 11){
          out.println(A);}
      //2桁以上の素数ゾーン
          if (A > 10){ 
            out.println("その他:");
          for (int y = 3; y * y <= A; y =y + 2) {
        while (A % y == 0) {
        out.print(y + " ");
        A =A / y;
                           }
                                           } 
          //割ったら1になる
             out.println(A);
          
               }
                  }
     
      
  

        %>

    </body>
</html>
