package Observadores;
import java.util.*;


public class Coin extends Observable implements Runnable {

	private double valorActual;
	private double valorMinimo = 99999;
	private double valorMaximo = 0;
	private String token;
	private double capital;
        
        public double getValorActual(){
            return valorActual;
        }
        
        public double getValorMinimo(){
            return valorMinimo;
        }
        
        public double getValorMaximo(){
            return valorMaximo;
        }
        
        public void setValorActual(double valorNuevo){
            this.valorActual = valorNuevo;
        }
        
        public void changeValorActual(double valorActual){
            this.valorActual = valorActual;
            
            if(valorActual < this.valorMinimo ){
               this.changeValorMin(valorActual);
            }
            
            if(valorActual > valorMaximo){
                this.changeValorMax(valorActual);
            }
            setChanged();
            notifyObservers(valorActual);
        }
        
        public void changeValorMax(double valorMaximo){
            this.valorMaximo = valorMaximo;
            setChanged();
            notifyObservers(valorMaximo);
        }
        
        public void changeValorMin(double valorMinimo){
            this.valorMinimo = valorMinimo;
            setChanged();
            notifyObservers(valorMinimo);
        }
        
        @Override
        public void run(){
            
            while(true){
                Random r = new Random();
                double low = 0;
                double high = 100000;
                double result = r.nextInt((int) (high-low)) + low;
             
                this.changeValorActual(result);
                
                try {
                Thread.sleep(6*1000);
             } catch (Exception e) {
                System.out.println(e);
             }
                
            }
        }
 
}