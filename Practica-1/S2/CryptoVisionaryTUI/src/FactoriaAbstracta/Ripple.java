/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoriaAbstracta;

import java.util.Random;

/**
 *
 * @author reko98
 */
public class Ripple extends CryptoCurrency{

    public Ripple() {
        setToken();
    }
    
    
    
    @Override
     public void setToken(){
        this.token="XRP";
    }
     
     
     
    @Override
    public void run(){
        
           while(true){
                double low = 0;
                double high = 10;
                double result =Math.random() * (high-low)+ low;
                //System.out.println("resutlado" + result);
       
                this.setValorActual(result);
                try {
                Thread.sleep(6*1000);
             } catch (Exception e) {
                System.out.println(e);
             }
                
            }
        
    }
    
}
