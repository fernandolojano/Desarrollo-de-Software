import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';


class FilterHalving implements Filter {
  double halvingQuantity;

  void setHalvingQuantity( double nuevoValor){
    this.halvingQuantity = nuevoValor;
  }

  double getHalvingQuantity (){
    return this.halvingQuantity;
  }


  @override
  double apply(Cryptocurrency moneda) {
    double nuevoPrecio;
    nuevoPrecio = this.getHalvingQuantity()*moneda.getValorActual();
    return nuevoPrecio;
  }
}