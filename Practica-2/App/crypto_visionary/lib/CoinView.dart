import 'package:flutter/material.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';

class CoinView extends StatelessWidget {

  Cryptocurrency coin = new Cryptocurrency.empty();

  CoinView(Cryptocurrency newCoin) {
    coin = newCoin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coin.getToken()),
      ),
      body: Container(
        child: Column(
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