/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoriaAbstracta;

/**
 *
 * @author reko98
 */

public class Conversor implements Runnable{
   CryptoCurrency monedaLocal;
   protected String Divisa;
   protected double valorUnidad;
    
    
    
   
   public void setMoneda(CryptoCurrency moneda){
        this.monedaLocal=moneda;
   }
    
    public void setDivisa(){}
    public double Convertir(){
        return 0;
    }

    @Override
    public void run() {
         while(true){
        this.Convertir();
        
         try {
                Thread.sleep(6*1000);
             } catch (Exception e) {
                System.out.println(e);
             }
       }
        
    }
}