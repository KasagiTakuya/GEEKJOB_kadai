/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BJ1;
import java.util.*;
/**
 *
 * @author PCUser
 */
public class User extends Human {
            
         public void  setCard(ArrayList<Integer> sCard){ 
               for (int i = 0;i < sCard.size();i++){
             myCard.add(sCard.get(i));           
              //ArrayListの情報が全部入る
             }
         } 
             
          public  boolean checkSum(){
          int a = open();
           //16以下だったらドローする
             if(a<=16){      
                 return true;
             }
                else{
                 return false;
                }
          }
          
            //openメソッド
           public int open(){
            int dealSum = 0;   
               for(int n = 0;n<myCard.size();n++){
                dealSum = dealSum + myCard.get(n);
               }
            return dealSum;
           }

    public void setCard(ArrayList[] Integer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
