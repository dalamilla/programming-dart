import 'package:flutter_test/flutter_test.dart';

import 'package:dice_roller/main.dart';

void main() {
  testWidgets('Dice Roller Layout', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text('Dice Roller'), findsOneWidget);
    expect(find.text('Roll'), findsOneWidget);
  });
}
