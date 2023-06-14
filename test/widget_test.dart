import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software/main.dart';

void main() {
  testWidgets('Finds Text "Hello World" test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Main());
    final centerText = find.text("Hello there");
    final gestureDetector = find.byType(GestureDetector);
    // Verify that our counter starts at 0.
    expect(centerText, findsOneWidget);
    expect(gestureDetector, findsOneWidget);
    expect(
      (tester.widget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      const Color.fromARGB(0, 0, 0, 0),
    );
    await tester.tap(gestureDetector);
    await tester.pumpAndSettle();
    expect(
      (tester.widget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      const Color.fromARGB(74, 74, 74, 74),
    );
  });
}
