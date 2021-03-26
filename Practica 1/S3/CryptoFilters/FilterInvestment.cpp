/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterInvestment.cpp
 * Author: reko98
 * 
 * Created on 25 de marzo de 2021, 12:56
 */

#include "FilterInvestment.h"

FilterInvestment::FilterInvestment() {
}

FilterInvestment::FilterInvestment(const FilterInvestment& orig) {
}

FilterInvestment::~FilterInvestment() {
}

FilterInvestment::FilterInvestment(double newValue){
    setCantidadInversion(newValue);
    
}

double FilterInvestment::apply(CryptoCurrency& moneda) {
	double valorPorcentaje;
	double cantidadIncremento;
	cout << "El valor de la inversion que se va a realizar es: " << this->getCantidadInversion() << endl;
	valorPorcentaje = (this->cantidadInversion*100)/moneda.getCapital();

	valorPorcentaje = valorPorcentaje/100;
        
        cout << "El porcentaje que se va a aplicar con el precio es: "<< valorPorcentaje << endl;

	cantidadIncremento=valorPorcentaje*moneda.getValorActual();

	return moneda.getValorActual()+cantidadIncremento;
	
}
