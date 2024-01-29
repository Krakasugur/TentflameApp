import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tentflameapp/sayfalar/esyalar.dart';

void main() {
  testWidgets('Eşyalar Sayfası Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home:Esyalar(),
    ));

    expect(find.text('Eşyalar'), findsOneWidget);
    expect(find.text('Hangi Malzemeler Bulunmalı?'), findsOneWidget);
    expect(find.text('Görseller'), findsOneWidget);
    expect(find.byType(Card), findsWidgets);
    expect(find.byType(Image), findsWidgets);
  });
}