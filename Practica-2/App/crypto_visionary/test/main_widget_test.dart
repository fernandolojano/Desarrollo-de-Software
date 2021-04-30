// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crypto_visionary/main.dart';

void main() {
  testWidgets('Un text widget contiene el nombre de criptomoneda BTC', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CryptoVisionary());
    await tester.pump();

    // Verify that our counter starts at 0.
    expect(find.text('BTC'), findsOneWidget);
    expect(find.text(''), findsNothing);
  });

  testWidgets('Un text widget el valor actual \$2400', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CryptoVisionary());
    await tester.pump();

    // Verify that our counter starts at 0.
    expect(find.text('\$2400.0'), findsOneWidget);
    expect(find.text(''), findsNothing);
  });

  testWidgets('Existe un icono de flecha en la interfaz', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CryptoVisionary());
    await tester.pump();

    // Verify that our counter starts at 0.
    expect(find.byIcon(Icons.keyboard_arrow_right_rounded), findsWidgets);
    expect(find.text(''), findsNothing);
  });
}
