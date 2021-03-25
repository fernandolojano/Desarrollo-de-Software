/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   CrytpoCurrency.h
 * Author: reko98
 *
 * Created on 25 de marzo de 2021, 12:55
 */

#ifndef CRYTPOCURRENCY_H
#define CRYTPOCURRENCY_H

#include<iostream>
#include<string>

using namespace std;

class CryptoCurrency {
public:
    CryptoCurrency();
    CryptoCurrency(const CryptoCurrency& orig);
    virtual ~CryptoCurrency();
    string getToken(){return this->token;}

    double getValorActual(){return this->valorActual;}

    double getValorMinimo(){return this->valorMinimo;}

    double getValorMaximo(){return this->valorMaximo;}

    double getCapital(){return this->capital;}

    void setToken(string nuevoValor){this->token=nuevoValor;}

    void setValorActual(double nuevoValor){this->valorActual=nuevoValor;}

    void setValorMinimo(double nuevoValor){this->valorMinimo=nuevoValor;}

    void setValorMaximo(double nuevoValor){this->valorMaximo=nuevoValor;}

    void setCapital(double nuevoValor){this->capital=nuevoValor;}

    void execution();
private:
    string token;
    double valorActual;
    double valorMinimo;
    double valorMaximo;
    double capital;

};

#endif /* CRYTPOCURRENCY_H */

