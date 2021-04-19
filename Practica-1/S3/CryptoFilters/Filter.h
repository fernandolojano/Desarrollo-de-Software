/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Filter.h
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:55
 */

#ifndef FILTER_H
#define FILTER_H

#include<iostream>
#include "CryptoCurrency.h"


class Filter {
public:
    Filter();
    Filter(const Filter& orig);
    virtual ~Filter();
    virtual double apply(CryptoCurrency& moneda);
private:

};

#endif /* FILTER_H */

