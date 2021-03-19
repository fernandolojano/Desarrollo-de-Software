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
public class ConversorEUR extends Conversor{
    
     
   @Override
   public void setDivisa(){
       this.Divisa="EUR";
   }
    
    
    
    @Override
    public double Convertir(CryptoCurrency ripple){
        
        System.out.println("precio" + ripple.getValorActual());
       
        return ripple.getValorActual()*0.26;
    }
}
