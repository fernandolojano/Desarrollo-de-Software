import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';

class FilterInvestment implements Filter {

  double cantidadInversion;

  void setCatindadInversion(double nuevaCantidad){
    this.cantidadInversion = nuevaCantidad;
  }

  double getCantidadInversion(){
    return this.cantidadInversion;
  }

  @override
  double apply(Cryptocurrency moneda){
    double valorPorcentaje;
    double cantidadIncremento;

    valorPorcentaje = (this.getCantidadInversion()*100)/moneda.getCapital();
    valorPorcentaje = valorPorcentaje/100;

    cantidadIncremento=valorPorcentaje*moneda.getValorActual();
    return moneda.getValorActual()+cantidadIncremento;
  }




}