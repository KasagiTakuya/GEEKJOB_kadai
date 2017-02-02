/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BJ1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 *
 * @author PCUser
 */
public class Result extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>BlackJac</title>");            
            out.println("</head>");
            out.println("<body>");
            //インスタンス生成
            Dealer Dea = new Dealer();
            User Use = new User();
            
            //Dea.dealの結果をぶん投げてドロー
            //投げたら結果をリターンしてくれる。
            Dea.setCard(Dea.deal());
            Use.setCard(Dea.deal());
            
            
            //trueの間は引き続ける
                while(Dea.checkSum() == true) {
                    //意味としては、1回ずつ繰り返す。1回ずつぶん投げて結果を求める
                Dea.setCard(Dea.hit());
                if(Dea.checkSum() == false) {
                    break;
                }
            }
            while(Use.checkSum() == true) {
                Use.setCard(Dea.hit());
                if(Use.checkSum() == false) {
                    break;
                }
            }
            
            String DeaBUR = " ";
            String UseBUR = " ";
            
            if(Dea.open()>21){
             DeaBUR = "  BURST!";     
            }
            if(Use.open()>21){
             UseBUR = "  BURST!";     
            }
            
            String Result = " ";
            
            
            //21以下で同点ならディーラーの勝利
            if(Dea.open()<=21&Dea.open() >=Use.open()){
            Result = "Dealer WIN...";
            }
            if(Use.open()>21){
            Result = "Dealer WIN..."; 
            }
            if(Dea.open()>21&Use.open()<=21){
            Result = "You WIN!!";    
            }
            if(Use.open()<=21&Dea.open()<Use.open()){
            Result = "You WIN!!"; 
            }
            if(Use.open()>21&Dea.open()>21){
            Result = "--DROW--";
            }
            
            
            
            
            //合計値表示
            out.println("ディーラーの合計:"+Dea.open()+DeaBUR+"<br>");
            out.println("あなたの合計:"+Use.open()+UseBUR+"<br><br>");
            out.println(Result);
            
           
            
                      
            
           
            out.println("</body>");
            out.println("</html>");
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
