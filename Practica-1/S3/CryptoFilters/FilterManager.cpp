/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FilterManager.cpp
 * Author: reko98
 * 
 * Created on 25 de marzo de 2021, 12:55
 */

#include "FilterManager.h"

FilterManager::FilterManager() {
}

FilterManager::FilterManager(const FilterManager& orig) {
}

FilterManager::~FilterManager() {
}

void FilterManager::addFilter(string filterType, double filterValue){
	list.addFilter(filterType, filterValue);
}

void FilterManager::execution(CryptoCurrency& moneda){
	list.Execute(moneda);
}

