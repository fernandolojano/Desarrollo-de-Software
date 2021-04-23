import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';

class FilterChain{
  List<Filter> filterList = [];

  void execute(Cryptocurrency moneda){
    double nuevoPrecio;
    print("FilterChain");
    for(int i=0; i < this.filterList.length; i++){
      nuevoPrecio=(filterList[i]).apply(moneda);
      nuevoPrecio = num.parse(nuevoPrecio.toStringAsFixed(2));
      moneda.setValorActual(nuevoPrecio);
    }
  }

  void addFilter(Filter newFilter){
    filterList.add(newFilter);
  }
}