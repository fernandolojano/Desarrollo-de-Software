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
public class ConversorGBP extends Conversor{
    
    
    @Override
    public void setDivisa(){
        this.Divisa="GBP";
    }
    
      
    @Override
    public double Convertir(){
       double res =this.monedaLocal.getValorActual()*0.72;
        System.out.println("precio" + res);
       
        return res;
    }

    
}
