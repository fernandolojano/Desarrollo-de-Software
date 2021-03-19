/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoriaAbstracta;

import java.util.*;

/**
 *
 * @author reko98
 */
public class CryptoVisionaryTUI  {
    public static CryptoCurrency moneda1;
    public static CryptoCurrency moneda2;
    public static Conversor convGen1;
    public static Conversor convGen2;
    public static FactoriaCriptomonedaDivisa factoria;
    public static double valorConversion1;
    
    public static void generar(){
        factoria = (FactoriaCriptomonedaDivisa) new FactoriaXRPEUR(); 
        moneda1 = factoria.crearCripto();
        convGen1 = factoria.crearConversor();
        convGen1.setMoneda(moneda1);
        
        factoria =(FactoriaCriptomonedaDivisa) new FactoriaETHGBP(); 
        moneda2 = factoria.crearCripto();
        convGen2 = factoria.crearConversor();
        convGen2.setMoneda(moneda2);
       
        
        
       
    }
  
    
    
    
    
    
    
    
    
    
    public static void main(String[] args) {
       generar();
       Thread hebraRunnable1 = new Thread( moneda1);
        hebraRunnable1.start();
        
        Thread hebraRunnable2 = new Thread(convGen1);
        hebraRunnable2.start();
        
        Thread hebraRunnable3 = new Thread( moneda2);
        hebraRunnable3.start();
        
        Thread hebraRunnable4 = new Thread(convGen2);
        hebraRunnable4.start();
        
        
        
         
   
       
    }
    
}
