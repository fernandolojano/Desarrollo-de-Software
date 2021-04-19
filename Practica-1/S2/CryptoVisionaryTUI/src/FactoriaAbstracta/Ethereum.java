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
public class Ethereum extends CryptoCurrency {
    


    public Ethereum() {
        setToken();
    }
    
    @Override
     public void setToken(){
        this.token="ETH";
    }
     
     
    @Override
    public void run(){
        
           while(true){
                Random r = new Random();
                double low = 0;
                double high = 3000;
                double result = r.nextInt((int) (high-low)) + low;
             
                this.setValorActual(result);

                
                try {
                Thread.sleep(6*1000);
             } catch (Exception e) {
                System.out.println(e);
             }
                
            }
        
    }
    
}
