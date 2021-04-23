import 'package:crypto_visionary/BDCriptomonedas.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:crypto_visionary/CoinView.dart';
import 'package:crypto_visionary/Actualizador.dart';
import 'package:crypto_visionary/FIlterInvestment.dart';
import 'package:crypto_visionary/FilterHalving.dart';
import 'package:crypto_visionary/FilterManager.dart';
import 'package:flutter/material.dart';

void main() {

  //BDCriptomonedas baseDatos = new BDCriptomonedas();


  runApp(CryptoVisionary());
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


class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    BDCriptomonedas baseDatos = new BDCriptomonedas();
    FilterManager filterManager = new FilterManager();
    filterManager.addFilter(new FilterHalving(1.23));
    filterManager.addFilter(new FilterInvestment(100));
    Actualizador update = new Actualizador(baseDatos, filterManager);
    List<Cryptocurrency> misMonedas = baseDatos.getListaMonedas();

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CoinView(misMonedas[index])));
            },
            title: Text(misMonedas[index].getToken()),
            subtitle: Text("\$" + misMonedas[index].getValorActual().toString()),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          );
        })
    );
  }
}

