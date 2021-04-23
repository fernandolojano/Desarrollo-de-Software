import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';

class FilterChain{
  List<Filter> filterList = [];
  double nuevoPrecio = 0.0;
  static FilterChain _instance = null;

  void execute(Cryptocurrency moneda){

    print("FilterChain");
    for(int i=0; i < this.filterList.length; i++){
      nuevoPrecio=(filterList[i]).apply(moneda);
      nuevoPrecio = num.parse(nuevoPrecio.toStringAsFixed(3));
      moneda.setValorActual(nuevoPrecio);
    }
  }

  void addFilter(Filter newFilter){
    filterList.add(newFilter);
  }

  static FilterChain getInstance(){
    if (_instance == null) {
      _instance = new FilterChain();
    }
  }
}