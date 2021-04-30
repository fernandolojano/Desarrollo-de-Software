import 'package:crypto_visionary/Cryptocurrency.dart';
import 'package:crypto_visionary/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crypto_visionary/CoinView.dart';

void main() {


  testWidgets('Token criptomoneda no nulo', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('BTC'), findsWidgets);

  });

  testWidgets('Valor Capital no nulo', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('\$0.0'), findsNothing);
  });


  testWidgets('Precio actual esperado : \$49402', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('\$49402.0'), findsOneWidget);
  });
}
