/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterInvestment.h
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:56
 */

#ifndef FILTERINVESTMENT_H
#define FILTERINVESTMENT_H

#include"Filter.h"
#include<iostream>

using namespace std;

class FilterInvestment: public Filter{
public:
    FilterInvestment();
    FilterInvestment(double newValue);
    FilterInvestment(const FilterInvestment& orig);
    virtual ~FilterInvestment();
    void setCantidadInversion(double nuevoValor){this->cantidadInversion=nuevoValor;}
    double getCantidadInversion(){return this->cantidadInversion;}
    double apply(CryptoCurrency& moneda)override;
	
private:
    double cantidadInversion;

};

#endif /* FILTERINVESTMENT_H */

