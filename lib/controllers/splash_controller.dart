import 'package:get/get.dart';
import 'package:my_shop/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    // Wait for 3 seconds, then navigate to the sign-in screen
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.onboardingScreen); 
    });
  }
}