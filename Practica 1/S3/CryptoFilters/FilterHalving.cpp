/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterHalving.cpp
 * Author: reko98
 * 
 * Created on 25 de marzo de 2021, 12:56
 */

#include "FilterHalving.h"

FilterHalving::FilterHalving() {
}

FilterHalving::FilterHalving(const FilterHalving& orig) {
}

FilterHalving::~FilterHalving() {
}

double FilterHalving::apply(CryptoCurrency& moneda){
	double nuevoPrecio;
        cout << "El valor de halving que se va a aplicar es: " << this->getHalvingCuantity() << endl;
        cout << "El valor del precio original de la moneda es: " << moneda.getValorActual() << endl;
        
	nuevoPrecio= this->halvingCuantity * moneda.getValorActual();

	return nuevoPrecio;
	
}
