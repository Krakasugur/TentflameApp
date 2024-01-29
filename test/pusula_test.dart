import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tentflameapp/sayfalar/menü/pusula.dart';

void main() {
  testWidgets('AppBar Pusula Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: pusula(),
      ),
    );


    expect(find.byType(AppBar), findsOneWidget);


    expect(find.text('Pusula'), findsOneWidget);
  });
}
