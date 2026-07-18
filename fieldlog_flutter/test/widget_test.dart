import 'package:flutter_test/flutter_test.dart';

import 'package:fieldlog_flutter/src/app.dart';

void main() {
  testWidgets('Onboarding screen shows the first step and Skip/Next controls', (tester) async {
    await tester.pumpWidget(const FieldLogApp());

    expect(find.text('Log anything, anywhere'), findsOneWidget);
    expect(find.text('Skip'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);
  });

  testWidgets('Tapping "Get started" on the last step navigates to Home', (tester) async {
    await tester.pumpWidget(const FieldLogApp());

    await tester.tap(find.text('Skip'));
    await tester.pumpAndSettle();

    expect(find.text('Get started'), findsOneWidget);

    await tester.tap(find.text('Get started'));
    await tester.pumpAndSettle();

    expect(find.text('You\'re in! Your log will live here.'), findsOneWidget);
  });
}
