import 'package:test/test.dart';
import 'package:crypto_visionary/FIlterInvestment.dart';
import 'package:crypto_visionary/Cryptocurrency.dart';


void main() {
  group('FilterInvestment', () {
    test('El nuevo valor de la criptomoneda debe ser 48080', () {
      final FilterInvestment filterInvestment = FilterInvestment(50000);
      final moneda = new Cryptocurrency("BTC", 3000000000, 48000, 12000, 64000);

      var nuevoValor = filterInvestment.apply(moneda);

      expect(nuevoValor, 48080);
    });

    test('El valor de la cantidad invertidad debe ser 50000', () {
      final FilterInvestment filterInvestment = FilterInvestment(50000);

      var cantidadInvertida = filterInvestment.getCantidadInversion();

      expect(cantidadInvertida, 50000);
    });
  });
}