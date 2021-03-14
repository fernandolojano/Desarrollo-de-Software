/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Observadores;

public class Cliente {
    public static void main(String[] args) throws InterruptedException{
        Coin nuevaMoneda = new Coin();
        CoinValueGUI valores = new CoinValueGUI();
        MinMaxGUI minMax = new MinMaxGUI(nuevaMoneda);
        ChangeGUI cambiaValor = new ChangeGUI(nuevaMoneda);
        ChartGUI chart = new ChartGUI();
        
        
        nuevaMoneda.addObserver(valores);
        nuevaMoneda.addObserver(cambiaValor);
        nuevaMoneda.addObserver(chart);
        
        
        Thread hebraRunnable = new Thread(nuevaMoneda);
        hebraRunnable.start();
       
        
    }
    
};
