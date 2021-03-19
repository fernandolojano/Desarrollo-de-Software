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
        
       
    }
  
    
    
    
    
    
    
    
    
    
    public static void main(String[] args) {
       generar();
       Thread hebraRunnable = new Thread( moneda1);
        hebraRunnable.start();
         
        
        
        double valor = moneda1.getValorActual();
       
        /*System.out.println("precio" + valor);*/
       
       
    }
    
}
