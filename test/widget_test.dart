import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test-final-fix/main.dart';

void main() {
  testWidgets('Main app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('Main screen displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();

    expect(find.text('test-final-fix'), findsOneWidget);
  });
}