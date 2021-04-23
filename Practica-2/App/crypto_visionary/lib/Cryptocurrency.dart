import 'package:flutter/material.dart';
import "dart:async";
import "package:threading/threading.dart";


class Cryptocurrency {
  String token;
  double capital;
  double valorActual;
  double valorMinimo;
  double valorMaximo;

  Cryptocurrency.empty() {
    this.token = "";
    this.capital = 0.0;
    this.valorActual = 0.0;
    this.valorMinimo = 0.0;
    this.valorMaximo = 0.0;
  }

  Cryptocurrency(String token, double capital, double valorActual, double valorMinimo, double valorMaximo) {
    this.token = token;
    this.capital = capital;
    this.valorActual = valorActual;
    this.valorMinimo = valorMinimo;
    this.valorMaximo = valorMaximo;
  }

   void setToken(String nuevoValor){
    this.token = nuevoValor;
  }

   void setValorActual(double nuevoValor){
    this.valorActual=nuevoValor;
  }

   void setValorMaximo(double nuevoValor){
    this.valorMaximo=nuevoValor;
  }

   void setValorMinimo(double nuevoValor){
    this.valorMinimo=nuevoValor;
  }

  void setCapital(double nuevoValor){
     this.capital=nuevoValor;
  }

   String getToken() {
    return token;
  }

   double getValorActual() {
    return valorActual;
  }

  double getValorMinimo() {
    return valorMinimo;
  }

  double getValorMaximo() {
    return valorMaximo;
  }

  double getCapital(){
     return this.capital;
  }


}