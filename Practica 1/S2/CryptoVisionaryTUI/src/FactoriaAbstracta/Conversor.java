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

public class Conversor {

   protected String Divisa;
   protected String token;
   protected double valorUnidad;
   protected double precioAnterior=0.0;
   protected double precioActual=0.0;

    

   public void setValorUnidad(double valorUnidad) {
        this.valorUnidad = valorUnidad;
    }

   public void setDivisa(){}
   
   public void setToken(String token) {
        this.token = token;
   }

   public String getToken() {
        return token;
   }
   
   public void setPrecioAnterior(double precioAnterior) {
        this.precioAnterior = precioAnterior;
   }
   
   public void setPrecioActual(double precioActual) {
        this.precioActual = precioActual;
   }

   public double getPrecioActual() {
        return precioActual;
   }

   public double getPrecioAnterior() {
        return precioAnterior;
   }
   
   public double getValorUnidad() {
        return valorUnidad;
    }

    
   public void analizarValor(double nuevoValor){
       if(nuevoValor != getValorUnidad()){
       setValorUnidad(nuevoValor);
       Convertir();
       
       System.out.println("-------------------------");
       System.out.println("----Conversor " + getToken() + "-" + this.Divisa + "----");
       System.out.print("-------------------------\n");

       System.out.println("El valor actual de " + getToken() + " en USD es: " + String.format("%.3f", valorUnidad));
       System.out.println("El precio en " + this.Divisa + " es:" + String.format("%.3f", getPrecioActual()));
       if(getPrecioActual() > getPrecioAnterior())
                System.out.println("El valor de " + getToken() + " ha aumentado");
       else System.out.println("El valor de " + getToken() + " ha disminuido");
       System.out.println("-------------------------\n"); 
       }
      
       
   } 
   
   public void Convertir(){

   }

}