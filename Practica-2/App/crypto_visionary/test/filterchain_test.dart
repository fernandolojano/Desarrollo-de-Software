import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:crypto_visionary/FilterHalving.dart';
import 'package:test/test.dart';
import 'package:crypto_visionary/FilterChain.dart';

void main() {
  group('FilterChain', () {
    test('Inicialmente nuevoPrecio es nulo', () {
      final filterChain = FilterChain.getInstance();
      expect(filterChain.nuevoPrecio, 0.0);
    });

    test('El valor no debe ser 0.0', () {
      final moneda = new Cryptocurrency("BTC", 3000000000, 48000, 12000, 64000);
      final filterChain = FilterChain.getInstance();
      filterChain.addFilter(new FilterHalving(1.001));
      filterChain.execute(moneda);

      /*
      Dado que el valor del filtro Halving es 1.001 y el valor actual de la
      criptmoneda de prueba que se ha creado 48000, el nuevo precio tras
      aplicar el filtro de Halving deber ser 48048
       */
      expect(filterChain.nuevoPrecio, 48048.0);

    });
  });
}