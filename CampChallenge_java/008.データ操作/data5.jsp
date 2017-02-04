<%-- 
    Document   : data5
    Created on : 2017/02/03, 10:51:45
    Author     : PCUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%HttpSession hs = request.getSession(true);%>
        <%//データを送りたい先のURLを入れる%>
       <form action="./data5.jsp"method="post">                 <%//囲ってタグの中に入れれば使える。中身がnullじゃなかったら表示%>
       名前:<input type="text" name="txtName"value=<%if(hs.getAttribute("txt")!=null){out.print(hs.getAttribute("txt"));} %>><br>
       性別:男<input type="radio" name="radiob"value="男" <%if(hs.getAttribute("radi")!=null&&hs.getAttribute("radi").equals("男")){out.print("checked");} %>>
            女<input type="radio" name="radiob"value="女" <%if(hs.getAttribute("radi")!=null&&hs.getAttribute("radi").equals("女")){out.print("checked");} %>><br>
       趣味:<textarea name="mulText"><%if(hs.getAttribute("mulT")!=null){out.print(hs.getAttribute("mulT"));} %></textarea><br>
       <input type="submit" name="btnsubmit" >
       
       </form>
            <%
            request.setCharacterEncoding("UTF-8");
            
            hs.setAttribute("txt",request.getParameter("txtName"));
            hs.setAttribute("radi",request.getParameter("radiob"));
            hs.setAttribute("mulT",request.getParameter("mulText"));
           %>
        
    </body>
</html>
