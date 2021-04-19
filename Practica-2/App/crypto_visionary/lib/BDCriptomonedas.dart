import 'dart:html';

import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';

class BDCriptomonedas {
  List<Cryptocurrency> BD;


  BDCriptomonedas(){
    Cryptocurrency tmp;

    tmp.setToken("BTC");
    tmp.setValorActual(63400);
    tmp.setValorMaximo(64000);
    tmp.setValorMinimo(0.00008);
    this.addMoneda(tmp);

    tmp.setToken("ETH");
    tmp.setValorActual(2400);
    tmp.setValorMaximo(2500);
    tmp.setValorMinimo(1.2);
    this.addMoneda(tmp);


    tmp.setToken("XRP");
    tmp.setValorActual(1.5);
    tmp.setValorMaximo(3.5);
    tmp.setValorMinimo(0.007);
    this.addMoneda(tmp);


    tmp.setToken("LTC");
    tmp.setValorActual(240);
    tmp.setValorMaximo(300);
    tmp.setValorMinimo(1.2);
    this.addMoneda(tmp);


    tmp.setToken("BNB");
    tmp.setValorActual(345);
    tmp.setValorMaximo(500);
    tmp.setValorMinimo(0.0);
    this.addMoneda(tmp);

    tmp.setToken("DOGE");
    tmp.setValorActual(0.38);
    tmp.setValorMaximo(0.40);
    tmp.setValorMinimo(0.002);
    this.addMoneda(tmp);
  }
  void addMoneda(Cryptocurrency coin){
    BD.add(coin);
  }

  Cryptocurrency getMoneda(String token) {
    Cryptocurrency crypto;
    for (crypto in BD){
      if(crypto.getToken()==token)
        return crypto;
    }

    return null;
  }
}