import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tip_calculator/main.dart';

void main() {
  testWidgets('Default tip percentage smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Tip Amount: \$0.00'), findsOneWidget);

    await tester.enterText(find.bySemanticsLabel('Bill Amount'), '100');
    await tester.pump();

    expect(find.text('Tip Amount: \$15.00'), findsOneWidget);
  });

  testWidgets('Tip percentage of 20% smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Tip Amount: \$0.00'), findsOneWidget);

    await tester.enterText(find.bySemanticsLabel('Bill Amount'), '100');
    await tester.enterText(find.bySemanticsLabel('Tip Percentage'), '20');
    await tester.pump();

    expect(find.text('Tip Amount: \$20.00'), findsOneWidget);
  });

  testWidgets('No bill amount smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Tip Amount: \$0.00'), findsOneWidget);

    await tester.enterText(find.bySemanticsLabel('Bill Amount'), '');
    await tester.pump();

    expect(find.text('Tip Amount: \$0.00'), findsOneWidget);
  });

  testWidgets('Disable round up tip smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Tip Amount: \$0.00'), findsOneWidget);

    await tester.enterText(find.bySemanticsLabel('Bill Amount'), '130');
    await tester.pump();

    expect(find.text('Tip Amount: \$19.50'), findsOneWidget);
  });

  testWidgets('Enable round up tip smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Tip Amount: \$0.00'), findsOneWidget);

    await tester.enterText(find.bySemanticsLabel('Bill Amount'), '130');
    await tester.tap(find.byKey(Key('roundup_key')));
    await tester.pump();

    expect(find.text('Tip Amount: \$20.00'), findsOneWidget);
  });
}
