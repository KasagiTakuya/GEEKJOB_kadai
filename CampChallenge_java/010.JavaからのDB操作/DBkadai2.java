/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbkadai;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author PCUser
 */
@WebServlet(name = "dbkadai2", urlPatterns = {"/dbkadai2"})
public class DBkadai2 extends HttpServlet {
   

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
        //参照表示するときに使うから今回は使わない
        ResultSet db_data = null;
        
   
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            } catch (ClassNotFoundException e) {
            
            } catch (Exception e) {
    
            }
        try
        {
            
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbkadai","Tkasagi","db1234");
           //prepareStatementにSQL文を入れる
           db_st = db_con.prepareStatement("insert into profiles(profilesID,name,tell,age,birthday)values(6,'山田太郎','090-1234-5678',35,'1980-10-06')");
           
           //最後にこれを入れる
           //追加・更新だからアップデート？
           db_st.executeUpdate();
           
            
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
