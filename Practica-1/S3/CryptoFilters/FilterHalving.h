/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterHalving.h
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:56
 */

#ifndef FILTERHALVING_H
#define FILTERHALVING_H

#include "Filter.h"
#include<iostream>

using namespace std;
class FilterHalving : public Filter {
public:
    FilterHalving();
    FilterHalving(double newValue);
    FilterHalving(const FilterHalving& orig);
    ~FilterHalving();
    void setHalvingCuantity(double nuevoValor){this->halvingCuantity=nuevoValor;}
    double getHalvingCuantity(){return this->halvingCuantity;}
    
    
    double apply(CryptoCurrency& moneda)override;
private:
    double halvingCuantity;

};

#endif /* FILTERHALVING_H */

