import 'package:crypto_visionary/BDCriptomonedas.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';
import 'FilterManager.dart';
import 'dart:math';

class Actualizador{
  BDCriptomonedas bd;
  FilterManager manager;

  Actualizador(BDCriptomonedas bd, FilterManager _manager){
    bd = bd;
    manager = _manager;

    bd.BD.forEach((moneda) {
      run(moneda);
    });
  }

  Future<void> run(Cryptocurrency criptomoneda) async{
    Random rand = new Random();
    while(true){
      manager.execution(criptomoneda);
      await Future.delayed(Duration(milliseconds: rand.nextInt(5000) + 5000));
    }
  }

 }

