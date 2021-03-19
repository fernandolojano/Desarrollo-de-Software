package FactoriaAbstracta;

public class FactoriaXRPEUR implements FactoriaCriptomonedaDivisa {
    
    @Override
    public Ripple crearCripto() {
              
        return new Ripple();
    }
    
    @Override
    public ConversorEUR crearConversor() {
        
        return new ConversorEUR();
    }
}