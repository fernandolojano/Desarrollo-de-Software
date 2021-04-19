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

    public ConversorEUR() {
        setDivisa();
    }

     
   @Override
   public void setDivisa(){
       this.Divisa="EUR";
   }
    
  
    
    @Override
    public void Convertir(){
 
        double nuevoPrecio = getValorUnidad()*0.84;
      
        if(nuevoPrecio != getPrecioActual()){
            setPrecioAnterior(getPrecioActual());
            setPrecioActual(nuevoPrecio);
        
        }

    }
}
