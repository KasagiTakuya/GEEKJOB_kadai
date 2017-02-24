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
 public   class  Dealer extends Human{
      
           //アレーリスト定義して囲めば使える
           ArrayList<Integer> Cards = new ArrayList<Integer>();{
           
                          //4回回す
              for(int m = 1;m <= 4;m = m+1){
                  //1~9回回す
                 for(int n = 0;n <= 8;n =n+1){
                   Cards.add(n);
                  
                 }
                  //絵札用の10
                    for(int l = 1;l<=4;l=l+1){
                   Cards.add(10);
                    }
              }  
           }
        //deelという公開メソッドで手札を2枚アレーリストに収納
     
         //これを呼び出すと、getカードから2枚ランダムに値が入れられたアレーリストが作成され返される。
         public ArrayList<Integer> deal(){
            //もし外に書いて使いたいときはthisを使う
         ArrayList<Integer> dealCards = new ArrayList<>();
                   Random r = new Random();    
           
                   for(int d=0; d<=1;d=d+1){
                    int cd = r.nextInt(51);
                      dealCards.add(Cards.get(cd));
                   }
                         
                         //ArrayList名と同じdealCardsにデータが入る          
                   return dealCards;
         }       
        
               //hitという公開メソッド
          public ArrayList<Integer>  hit(){
            ArrayList<Integer> hitCards = new ArrayList<Integer>();
                     Random r = new Random();
                     int cd = r.nextInt(51);
                     hitCards.add(Cards.get(cd));
                      //ArrayList名と同じhitCardsにデータが入る       
                     return hitCards;
          }       
        
        //setCardはArrayListで受けたカード情報をmyCardに追加するように実装
           @Override                       /*この唐突に表れたように感じるsCardは、Resultクラスから投げられたdealのアレーリストクラス
                                           sCardは何かというと変数名。単純に考えるとint a のaと同じ
                                           52枚分のアレーリストを用意→dealメソッドでランダムに1枚引いてそれをセットカードに入れ、myカードアレーリストにセット
                                           openメソッドでmyカードアレーリストに追加されたカードの合計値を返すという仕組み*/
         public void  setCard(ArrayList<Integer> sCard){
               for (int i = 0;i < sCard.size();i++){
             myCard.add(sCard.get(i));           
              //ArrayListの情報が全部入る      
               }
         }
          
            @Override 
            public boolean checkSum(){
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
            @Override
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
           
            
       
             
            


              
        
    
          

 