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
public class FactoriaETHGBP implements FactoriaCriptomonedaDivisa{
    
      @Override
    public Ethereum crearCripto() {
        Ethereum ethereum = new Ethereum();

        return ethereum;
    }
    
    @Override
    public ConversorGBP crearConversor() {
        ConversorGBP convGbp = new ConversorGBP();
        
        return convGbp;
    }
    
}
