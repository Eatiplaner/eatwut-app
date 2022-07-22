// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:eatiplan_mobile/screens/auth/register/main.dart';
import 'package:eatiplan_mobile/utils/create_widget_for_testing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Render register successful', (WidgetTester tester) async {
    await tester
        .pumpWidget(createWidgetForTesting(child: RegisterScreen()));

    // Verify that our app render successful.
    expect(find.textContaining('Register'), findsWidgets);
  });
}
