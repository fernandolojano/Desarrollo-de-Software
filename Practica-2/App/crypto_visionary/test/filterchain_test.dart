import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:test/test.dart';
import 'package:crypto_visionary/FilterChain.dart';

void main() {
  group('FilterChain', () {
    test('Inicialmente nuevoPrecio es nulo', () {
      final filterChain = FilterChain.getInstance();
      expect(filterChain.nuevoPrecio, 0.0);
    });

    test('El valor no debería ser null', () {
      final moneda = new Cryptocurrency("BTC", 3000000000, 48000, 12000, 64000);
      final filterChain = FilterChain.getInstance();
      filterChain.execute(moneda);
      expect(filterChain.nuevoPrecio, filterChain.nuevoPrecio != null);

    });
  });
}