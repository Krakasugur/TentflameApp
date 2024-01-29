import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tentflameapp/sayfalar/menü/havadurumu.dart';

void main() {
  testWidgets('AppBar HavaDurumu Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: havadurumu(),
      ),
    );
    expect(find.byType(AppBar), findsOneWidget);

    expect(find.text('Hava Durumu'), findsOneWidget);
  });
}
