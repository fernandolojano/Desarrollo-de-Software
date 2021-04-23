import 'package:crypto_visionary/BDCriptomonedas.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';
import 'FilterManager.dart';
import 'dart:math';

class Actualizador{
  BDCriptomonedas bd;
  FilterManager manager;

  Actualizador(BDCriptomonedas bd, FilterManager _manager){
    this.bd = bd;
    manager = _manager;

    bd.BD.forEach((moneda) {
      run(moneda);
    });
  }

  Future<void> run(Cryptocurrency criptomoneda) async{
    Random rand = new Random();
    double min = 10000;
    double max = 100000;
    criptomoneda.setValorActual(rand.nextDouble() * (max-min) + min);
    print(criptomoneda.getValorActual());
    while(true){
      manager.execution(criptomoneda);
      await Future.delayed(Duration(milliseconds: rand.nextInt(5000) + 5000));
    }
  }

 }

