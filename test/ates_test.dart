import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tentflameapp/sayfalar/ates.dart';

void main() {
  testWidgets('Ates Sayfası Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Ates(),
    ));

    expect(find.text('Ateş'), findsOneWidget);
    expect(find.text('Ateş Nasıl Yakılır?'), findsOneWidget);
    expect(find.text('Görseller'), findsOneWidget);
    expect(find.byType(Card), findsWidgets);
    expect(find.byType(Image), findsWidgets);
  });
}
