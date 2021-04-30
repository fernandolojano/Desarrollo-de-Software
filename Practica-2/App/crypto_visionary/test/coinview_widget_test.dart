import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:crypto_visionary/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crypto_visionary/CoinView.dart';

void main() {


  Cryptocurrency bitcoin = new Cryptocurrency("BTC", 923440170962, 49402, 0.00008, 64000);
  testWidgets('Token criptomoneda no nulo', (WidgetTester tester) async {
    CoinView visor = new CoinView();
    visor.setCoin(bitcoin);
    await tester.pumpWidget(MyApp());
    expect(find.text('\$49402'), findsNothing);

  });
}
