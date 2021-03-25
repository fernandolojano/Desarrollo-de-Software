/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:52
 */

#include <cstdlib>
#include "FilterManager.h"
#include "Filter.h"
#include "FilterInvestment.h"
#include "FilterHalving.h"
#include "CryptoCurrency.h"
using namespace std;

/*
 * 
 */
int main(int argc, char** argv) {
    FilterInvestment filtro1;
    FilterHalving filtro2;
    FilterManager despachador;
    CryptoCurrency moneda;
    
     
    moneda.setValorActual(12000);
    moneda.setCapital(50000000);
    moneda.setToken("BTC");
   
    
    filtro1.setCantidadInversion(500000);
    filtro2.setHalvingCuantity(0.6);
    
    despachador.addFilter(filtro1);
    despachador.addFilter(filtro2);
    despachador.execution(moneda);
    
}

