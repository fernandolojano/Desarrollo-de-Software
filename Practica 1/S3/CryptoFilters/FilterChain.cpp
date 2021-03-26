/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterChain.cpp
 * Author: reko98
 * 
 * Created on 25 de marzo de 2021, 12:56
 */

#include "FilterChain.h"
#include "FilterHalving.h"
#include "FilterInvestment.h"

FilterChain::FilterChain() {
}

FilterChain::FilterChain(const FilterChain& orig) {
}

FilterChain::~FilterChain() {
}

void FilterChain::addFilter(string filterType, double filterValue ){
    if(filterType == "Halving")
            filterList.push_back(new FilterHalving(filterValue));
       
    else if (filterType == "Inversion")   
            filterList.push_back(new FilterInvestment(filterValue));

}

void FilterChain::Execute(CryptoCurrency& moneda) {
    double nuevoPrecio;
	for(int i=0; i < this->filterList.size(); i++){
            nuevoPrecio=(filterList[i])->apply(moneda);
       
                moneda.setValorActual(nuevoPrecio);     
	}

	moneda.execution();
        
        
}
