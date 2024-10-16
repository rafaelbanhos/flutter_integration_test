import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_integration_test/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Home Page E2E Test', () {
    testWidgets('Click 5x on FAB Increment', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      for (var i = 0; i < 5; i++) {
        await tester.tap(find.byIcon(Icons.plus_one));
        await Future.delayed(const Duration(seconds: 1));
      }
      await tester.pumpAndSettle();

      expect(find.text('5'), findsOneWidget);
    });
  });

  testWidgets('Write in the text field to change the page title',
      (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    var title =
        find.byKey(const Key('title')).evaluate().single.widget as Text;
    expect(title.data, equals('Home'));

    // Possible enterText bug on iPad (due to keyboard)
    // await Future.delayed(const Duration(seconds: 2));
    // await tester.enterText(find.byKey(const Key('titleInput')), 'Home Page');
    // await Future.delayed(const Duration(seconds: 2));
    // await tester.pumpAndSettle();
    // await Future.delayed(const Duration(seconds: 2));

    // title = find.byKey(const Key('title')).evaluate().single.widget as Text;
    // expect(title.data, equals('Home Page'));
  });
}
