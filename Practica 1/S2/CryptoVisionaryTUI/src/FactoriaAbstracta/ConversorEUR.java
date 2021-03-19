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
    public double Convertir(){
        double res =this.monedaLocal.getValorActual()*0.84;
        System.out.println("                                            precio" + res);
       
        return res;
    }

}
