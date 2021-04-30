
import 'package:flutter/material.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';

import 'main.dart';


void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoinView(),
    );
  }
}


class CoinView extends StatelessWidget {
  Cryptocurrency coin = new Cryptocurrency.empty();



  void setCoin(Cryptocurrency newCoin){
    this.coin = newCoin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coin.getToken()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              coin.getToken(),
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "\$" + coin.getValorActual().toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              "Capital: " + coin.getCapital().toString(),
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}