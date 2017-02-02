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
 abstract class Human{
   public abstract int open();
    public abstract void setCard(ArrayList<Integer> Integer);
    public abstract boolean checkSum();
    ArrayList<Integer> myCard = new ArrayList<>();
    }