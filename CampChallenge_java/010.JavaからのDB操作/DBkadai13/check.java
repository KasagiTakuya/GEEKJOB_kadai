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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PCUser
 */
public class check extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
    
        Connection db_con = null;
        PreparedStatement db_st = null;
        
        //参照表示用(使うのかわからないけどとりあえず入れておく)
        ResultSet db_data = null;
        
        //入れないと文字化けする
        request.setCharacterEncoding("UTF-8");
        
        //セッションを使うための設定
        HttpSession session = request.getSession(true);
        String ss = " ";
        
        
        //例外処理
        try{
            //tryの中で行う作業中に例外が発生しないかということ
            //ドライバー接続
        Class.forName("com.mysql.jdbc.Driver").newInstance();
                    //例外が発生したらcatchの中の処理が行われる
            } catch (ClassNotFoundException e) {
            } catch (Exception e) {
            }
        
        try{                                                                          //DBのパス,ID,パスワード
           db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbkadai","Tkasagi","db1234");
                                           //prepareStatementにSQL文を入れる                                
           db_st = db_con.prepareStatement("select * from user where name = ? and pass = ?");
           //処理としてはand検索をして両方に一致するユーザーがいるのかという照合をしたい
           db_st.setString(1,request.getParameter("user"));   
           db_st.setString(2,request.getParameter("pass"));          
           //最後にこれを入れる
           //参照表示はこれ
           db_data =  db_st.executeQuery();
           
          //ページ遷移も出来た
          //戻った時にセッションで失敗しましたと表示させる
          //考え方的にはこれで動いたので基本線はこれで
          //データが入っていたらtrueを吐く
          if(db_data.next()==true){
          String url = "/menu.jsp";
          ss = "ok";
          //考え方としてはKeyという箱の中にssの値を入れてる
          session.setAttribute("Key",ss);
          
           String username = db_data.getString("name");
           session.setAttribute("username",username);
          //ページ遷移させたいときはこれを使う。importも必要 
          RequestDispatcher product = request.getRequestDispatcher(url);
          product.forward(request, response);
          }else {
          String url = "/login.jsp";
          ss = "ng";
          session.setAttribute("Key",ss);
          //session.setAttribute("cheak","no");　←間違った使い方
          RequestDispatcher product = request.getRequestDispatcher(url);
          product.forward(request, response);
          }
 
            db_st.close();
            db_con.close();
        //SQL側に問題があったら作動する    
        }catch (SQLException e_sql){
            out.println("SQLに問題があります。"+e_sql.toString());
        }catch (Exception e){
            out.println("エラーが発生しました"+e.toString());
        }finally {
            if(db_con !=null||db_data !=null||db_st !=null){
                try{
                db_con.close();
                //db_data.close();
                db_st.close();
                }catch (Exception e_con){
                    System.out.println(e_con.getMessage());
                }
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
