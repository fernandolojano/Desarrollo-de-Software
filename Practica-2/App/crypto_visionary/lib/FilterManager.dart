import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';
import 'FilterChain.dart';

class FilterManager{
  FilterChain list = new FilterChain();

  void addFilter(Filter nuevo){
    list.addFilter(nuevo);
  }

  void execution(Cryptocurrency moneda){
    list.execute(moneda);
  }
}
