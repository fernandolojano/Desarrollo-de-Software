import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:crypto_visionary/FIlterInvestment.dart';
import 'package:crypto_visionary/FilterHalving.dart';
import 'package:test/test.dart';
import 'package:crypto_visionary/FilterChain.dart';

void main() {
  group('FilterChain', () {
    test('Inicialmente el nuevo precio de la criptomoneda tiene valor 0.0', () {
      final filterChain = FilterChain.getInstance();
      expect(filterChain.nuevoPrecio, 0.0);
    });

    test('El nuevo precio de la criptomoneda deber ser 48048.0', () {
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

    test('El número de filtros actual es 1', () {

      final filterChain = FilterChain.getInstance();
      var numFiltros = filterChain.filterList.length;

      //Inicialmente, la lista de filtros tiene un filtro,
      //el añadido en el test anterior
      expect(numFiltros, 1);

    });

    test('El número de filtros deber ser 3', () {

      final filterChain = FilterChain.getInstance();
      filterChain.addFilter(new FilterHalving(1.001));
      filterChain.addFilter(new FilterInvestment(50000));
      var numFiltros = filterChain.filterList.length;

      //Se han añadido dos filtros más, por tanto el tamaño
      //de la lista de filtros deber ser de 3
      expect(numFiltros, 3);

    });
  });
}