import 'dart:async';
import 'dart:math';

import 'package:crypto_visionary/BDCriptomonedas.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:crypto_visionary/CoinView.dart';
import 'package:crypto_visionary/Actualizador.dart';
import 'package:crypto_visionary/FIlterInvestment.dart';
import 'package:crypto_visionary/FilterHalving.dart';
import 'package:crypto_visionary/FilterManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {

  runApp(CryptoVisionary());
}

double generarInversion(){
  Random rand = new Random();
  double min = -100000;
  double max = 100000;
  return (rand.nextDouble() * (max-min) + min);

}


class CryptoVisionary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: MyHomePage(title: "CryptoVisionary V.0"),
    );
    throw UnimplementedError();
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}


void runCoinView(BuildContext context, Cryptocurrency coin){
  CoinView visor = new CoinView();

  visor.setCoin(coin);
  Navigator.push(context, MaterialPageRoute(builder: (context) => visor));
}
class _MyHomePageState extends State<MyHomePage> {
  Timer timer;
  BDCriptomonedas baseDatos = new BDCriptomonedas();
  FilterManager filterManager = new FilterManager();
  List<Cryptocurrency> misMonedas = [];



  void aplicarFiltros() {
    filterManager.addFilter(new FilterHalving(1.001));
    filterManager.addFilter(new FilterInvestment(generarInversion()));
  }

  void obtenerMonedas() {
    aplicarFiltros();
    //Actualizador actualizador = new Actualizador(baseDatos, filterManager);
    misMonedas = baseDatos.getListaMonedas();
  }
/*
  @override
  void initState(){
    super.initState();
    timer= Timer.periodic(Duration(seconds: 2), (Timer t) => changeValue());
  }

  void changeValue(){
    setState(() {
      for(int i = 0; i<misMonedas.length; i++){
        subtitle: Text("\$" + misMonedas[i].getValorActual().toString());
      }
    });
  }

  @override
  void dispose(){
    timer?.cancel();
    super.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {


    obtenerMonedas();


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: misMonedas.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  runCoinView( context, misMonedas[index]);
                },
                title: Text(misMonedas[index].getToken()),
                subtitle: Text("\$" + misMonedas[index].getValorActual().toString()),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              );
            })
    );
  }
}

