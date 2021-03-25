/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   CrytpoCurrency.cpp
 * Author: reko98
 * 
 * Created on 25 de marzo de 2021, 12:55
 */

#include "CryptoCurrency.h"

CryptoCurrency::CryptoCurrency() {
}

CryptoCurrency::CryptoCurrency(const CryptoCurrency& orig) {
}

CryptoCurrency::~CryptoCurrency() {
}

void CryptoCurrency::execution(){
	cout << "El valor Final de la CriptoMoneda despues de aplicar los filtros es: " 
	     << this->getValorActual() << endl;
	
}
