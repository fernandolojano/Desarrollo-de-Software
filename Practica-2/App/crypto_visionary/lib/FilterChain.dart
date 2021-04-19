import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';

class FilterChain{
  List<Filter> filterList;

  void execute(Cryptocurrency moneda){
    double nuevoPrecio;
    for(int i=0; i < this.filterList.length; i++){
    nuevoPrecio=(filterList[i]).apply(moneda);
    moneda.setValorActual(nuevoPrecio);
    }
  }

  void addFilter(Filter newFilter){
    filterList.add(newFilter);
  }
}