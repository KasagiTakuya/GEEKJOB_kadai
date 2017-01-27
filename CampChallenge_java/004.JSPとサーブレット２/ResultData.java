package test;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.util.Date;
/**
 *
 *
 * @author PCUser
 */

public class ResultData implements Serializable {
    private Date d;
    private String luck;
   
    public ResultData(){}
    
  


    public Date getD() {
    return d;
            }
    
    public void setD(Date d){
    this.d = d;
                }

    public String getLuck(){
    return luck;
    }
                                                

        public void setLuck(String Luck){
        this.luck = Luck;
        }

}


