/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zaiko;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PCUser
 */
public class itemupdate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
        //コネクションから
        Connection db_con = null;
        //これを取得する。
        PreparedStatement db_st = null;
        
        ResultSet db_data = null;
        
        //入れないと文字化けする
        request.setCharacterEncoding("UTF-8");
        
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            } catch (ClassNotFoundException e) {
              
            } catch (Exception e) {
              
            }
        try
        {
            
           db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbkadai","Tkasagi","db1234");
           //prepareStatementにSQL文を入れる                        //?に数字が入る
           db_st = db_con.prepareStatement("Insert into item values(?,?,?)");
           
          db_st.setInt(1,Integer.parseInt(request.getParameter("ID")));
          db_st.setString(2,request.getParameter("name"));
          db_st.setInt(3,Integer.parseInt(request.getParameter("price")));
          
         db_st.executeUpdate();
         
         db_st = db_con.prepareStatement("SELECT* FROM item where itemID = ?");
         
          db_st.setInt(1,Integer.parseInt(request.getParameter("ID")));
         
         db_data =  db_st.executeQuery();
         out.println("今回追加したデータ"+"<br>");
         
           while(db_data.next()){
           out.println("ID:"+db_data.getInt("itemID")+"名前:"+db_data.getString("name")+"値段:"+db_data.getInt("price")+"<br>"+"<br>");
           }
         
         
         out.println("商品一覧"+"<br>");
         db_st = db_con.prepareStatement("SELECT* FROM item"); 
           //最後にこれを入れる
           //参照表示はこれ
         db_data =  db_st.executeQuery();
           while(db_data.next()){
           out.println("ID:"+db_data.getInt("itemID")+"名前:"+db_data.getString("name")+"値段:"+db_data.getInt("price")+"<br>");
           }
          out.println("<form action=http://localhost:8080/zaiko/menu.jsp method=post>");
          out.println("<input type=submit value=メインページへ><br>");
          
            db_data.close();
            db_st.close();
            db_con.close();
            
        }catch (SQLException e_sql){
            out.println("接続時にエラーが発生しました"+e_sql.toString());
        }catch (Exception e){
            out.println("エラーが発生しました"+e.toString());
        }finally {
            if(db_con !=null||db_data !=null||db_st !=null){
                try{
                db_con.close();
                db_data.close();
                db_st.close();
                }catch (Exception e_con){
                    System.out.println(e_con.getMessage());
                }
            }
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
