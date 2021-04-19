/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterManager.h
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:55
 */

#ifndef FILTERMANAGER_H
#define FILTERMANAGER_H

#include<iostream>
#include "FilterChain.h"


class FilterManager {
public:
    FilterManager();
    FilterManager(const FilterManager& orig);
    ~FilterManager();
    void addFilter(string filterType, double filterValue );
    void execution(CryptoCurrency& moneda);
private:
    FilterChain list;

};

#endif /* FILTERMANAGER_H */

