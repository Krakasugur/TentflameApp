import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tentflameapp/sayfalar/cadir.dart';

void main() {
  testWidgets('Çadır Sayfası Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Cadir(),
    ));

    expect(find.text('Çadır'), findsOneWidget);
    expect(find.text('Çadır Nasıl Kurulur?'), findsOneWidget);
    expect(find.text('Görseller'), findsOneWidget);
    expect(find.byType(Card), findsWidgets);
    expect(find.byType(Image), findsWidgets);
  });
}