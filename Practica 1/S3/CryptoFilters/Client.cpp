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
    FilterManager despachador;
    CryptoCurrency moneda;
    
    moneda.setValorActual(53488.98);
    moneda.setCapital(998335131339);
    moneda.setToken("BTC");
     
    despachador.addFilter("Inversion", 500000000000);
    despachador.addFilter("Halving", 0.5);
    int arg = -1;
        
    
    while(arg != 0){
        cout << "Seleccione una de las dos Opciones:" << endl;
        cout << "1 - Imprimir precio actual de la moneda" << endl;
        cout << "2 - Aplicar filtros" << endl;
        cout << " Para salir pulse 0" << endl;
        
        cin >> arg;
        switch (arg){
            case 0:
                cout << "Saliendo del programa..." << endl;
                exit(0);
            break;
            
            case 1:
                cout << "El precio de la moneda " << moneda.getToken() << " es "
                     << moneda.getValorActual() << " $"  << endl << endl;
            break;
            
            case 2:
                cout << "Aplicamos los filtros sobre el precio actual " << endl << endl;
                    despachador.execution(moneda);
            break;
            
            default:
                cout << "No ha seleccionado ningna opcion disponible."  << endl << endl;
            break;
        
        }
                
    };

};

