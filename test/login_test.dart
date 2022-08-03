import 'package:eatiplan_mobile/screens/auth/login/main.dart';
import 'package:eatiplan_mobile/utils/create_widget_for_testing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Render login successful', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: const LoginScreen()));
    expect(find.textContaining('login.welcomeBack'.tr), findsWidgets);
  });
}
