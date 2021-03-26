/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterChain.h
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:56
 */

#ifndef FILTERCHAIN_H
#define FILTERCHAIN_H

#include<vector>
#include<iostream>
#include "Filter.h"
#include "CryptoCurrency.h"

using namespace std;

class FilterChain {
public:
    FilterChain();
    FilterChain(const FilterChain& orig);
    ~FilterChain();
    void addFilter(string filterType, double filterValue);
    void Execute(CryptoCurrency& moneda);
    int getSize(){return this->filterList.size();}
    
private:
    vector<Filter *> filterList;
   // CryptoCurrency monedaLocal;

};

#endif /* FILTERCHAIN_H */

