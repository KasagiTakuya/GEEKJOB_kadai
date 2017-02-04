<%-- 
    Document   : hyo10
    Created on : 2017/02/03, 10:21:00
    Author     : PCUser
--%>
        <%@page import= "java.util.*"%>
        <%@page import= "java.text.*" %>
        <%@page import = "java.io.*"%>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       //処理開始時間  
       SimpleDateFormat A = new SimpleDateFormat("yyyy年MM月dd日 HH時mm分ss秒");
       Date date = new Date();
       String AA = A.format(date);    
        
        //txtファイル作成    
        //同名ファイルがあったら作成されない
         File newfile = new File("C:/Users/PCUser/Documents/NetBeansProjects/Filetest/build/web/‪log.txt");

        

       File txt = new File(application.getRealPath("log.txt"));
     
       //上書きモード
       FileWriter wr = new FileWriter(txt);
       
       //終了時刻
       String BB = A.format(date);
       
       //追記モード
       FileWriter ur = new FileWriter(txt,true);
       
        wr.write(AA+" 開始");
        ur.write(BB+" 終了");
       
       wr.close();
   
       ur.close();
       
       FileReader fi = new FileReader(txt);
       
       BufferedReader br = new BufferedReader(fi);
       
       out.println(br.readLine());
       
       br.close();
       
       
       
       
       
       
        %>
    </body>
</html>
