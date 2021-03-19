/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoriaAbstracta;


public class CryptoCurrency {
    protected String token;
    protected Double valorActual;
    protected Double valorMinimo;
    protected Double valorMaximo;
    
    
    
    public void setToken(){
        
    }
    
    public void setValorActual(double nuevoValor){
        
         if(nuevoValor < this.valorMinimo ){
               this.setValorMinimo(nuevoValor);
            }
            
            if(nuevoValor > valorMaximo){
                this.setValorMaximo(nuevoValor);
            }
      this.valorActual=nuevoValor; 
    }
    
    public void setValorMaximo(double nuevoValor){
        this.valorMaximo=nuevoValor;
    }
    
    public void setValorMinimo(double nuevoValor){
        this.valorMinimo=nuevoValor;
    }

    public String getToken() {
        return token;
    }

    public Double getValorActual() {
        return valorActual;
    }

    public Double getValorMinimo() {
        return valorMinimo;
    }

    public Double getValorMaximo() {
        return valorMaximo;
    }
    
    
    
    public void run(){
        
    }
    
    
}
