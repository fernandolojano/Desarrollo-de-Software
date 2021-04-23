//import 'dart:html';

import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';

class BDCriptomonedas {
  List<Cryptocurrency> BD = [];


  BDCriptomonedas(){
    Cryptocurrency bitcoin = new Cryptocurrency("BTC", 50, 63400, 0.00008, 64000);
    Cryptocurrency ethereum = new Cryptocurrency("ETH", 22, 2400, 1.2, 2500);
    Cryptocurrency xrp = new Cryptocurrency("XRP", 78, 1.5, 0.007, 3.5);
    Cryptocurrency ltc = new Cryptocurrency("LTC", 12, 240, 1.2, 300);
    Cryptocurrency bnb = new Cryptocurrency("BNB", 66, 345, 0.0, 500);
    Cryptocurrency dodge = new Cryptocurrency("DOGE", 10, 0.38, 0.002, 0.40);

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