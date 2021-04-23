import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';

class FilterInvestment implements Filter {

  double cantidadInversion;

  FilterInvestment(double inversion) {
    cantidadInversion = inversion;
  }

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
    double diferencia;

    diferencia = (cantidadInversion+moneda.getCapital()) - moneda.getCapital();
    valorPorcentaje = (diferencia/moneda.getCapital()) * 100;
    moneda.setCapital(moneda.getCapital()+cantidadInversion);

    cantidadIncremento=valorPorcentaje*moneda.getValorActual();
    return moneda.getValorActual()+cantidadIncremento;
  }




}