import 'package:test/test.dart';
import 'package:crypto_visionary/FilterHalving.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';


void main() {
  group('FilterHalving', () {
    test('El nuevo valor de la criptomoneda debe ser 24000', () {
      final FilterHalving filterInvestment = FilterHalving(0.5);
      final moneda = new Cryptocurrency("BTC", 3000000000, 48000, 12000, 64000);

      var nuevoValor = filterInvestment.apply(moneda);

      expect(nuevoValor, 24000);
    });

    test('El valor del halving deber ser de 0.5', () {
      final FilterHalving filterHalving = FilterHalving(0.5);

      var valorHalving = filterHalving.getHalvingQuantity();

      expect(valorHalving, 0.5);
    });
  });
}