import 'package:get/route_manager.dart';

class TrackingMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    trackingScreen();
    return super.onPageCalled(page);
  }

  trackingScreen() {
    // TODO: analytic tracking screen
  }
}
