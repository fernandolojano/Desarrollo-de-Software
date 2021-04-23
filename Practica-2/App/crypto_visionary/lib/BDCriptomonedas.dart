//import 'dart:html';

import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';

class BDCriptomonedas {
  List<Cryptocurrency> BD = [];


  BDCriptomonedas(){
    Cryptocurrency bitcoin = new Cryptocurrency("BTC", 923440170962, 49402, 0.00008, 64000);
    Cryptocurrency ethereum = new Cryptocurrency("ETH", 263118567324, 2400, 1.2, 2500);
    Cryptocurrency xrp = new Cryptocurrency("XRP", 50328423865, 1.5, 0.007, 3.5);
    Cryptocurrency ltc = new Cryptocurrency("LTC", 15639510221, 240, 1.2, 300);
    Cryptocurrency bnb = new Cryptocurrency("BNB", 77711586091, 345, 0.0, 500);
    Cryptocurrency dodge = new Cryptocurrency("DOGE", 31225717622, 0.38, 0.002, 0.40);

    this.addMoneda(bitcoin);
    this.addMoneda(ethereum);
    this.addMoneda(xrp);
    this.addMoneda(ltc);
    this.addMoneda(bnb);
    this.addMoneda(dodge);
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

  List<Cryptocurrency> getListaMonedas() {
    return BD;
  }
}