import 'package:crypto_visionary/BDCriptomonedas.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:flutter/material.dart';

void main() {


  BDCriptomonedas baseDatos = new BDCriptomonedas();
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
  var moneda = Cryptocurrency();
  double valor  = 0;




Widget bodyData()=>DataTable(
   columns: <DataColumn> [
     DataColumn(
       label: Text("Prueba"),
       numeric: false,
       onSort: (i, b) {},
     ),
     DataColumn(
         label: Text("Prueba2"),
         numeric: false,
         onSort: (i, b) {},
     ),
   ],

  rows: <DataRow>[
    DataRow(cells: <DataCell>[
      DataCell(Text("Pawan")),
      DataCell(Text("Kumar")),
    ])
  ],
);




  @override
  Widget build(BuildContext context) {
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
      body: Container(
        child: bodyData(),
      )
    );
  }
}
