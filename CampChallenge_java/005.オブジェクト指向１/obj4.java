/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objkadai;

/**
 *
 * @author PCUser
 */
public class obj3{
    //パブリックな変数
    public  String hensu1 = "";
    public  int hensu2 = 0;
    
    //変数に情報を入れるメソッド
  public  void meth1(String b){
		hensu1 = b;
		
                            }
  public  void meth2(int a){
		hensu2 = a;
		
}
  public  void pri(){
 System.out.println(hensu1+hensu2);
  }
    
                }

class obj4 extends obj3{
 public void delet(){
  hensu1 = null;
  hensu2 = 0;
}
}
