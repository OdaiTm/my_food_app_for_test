import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final SplashController spc = Get.put(SplashController());

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 77, 79),
      body: Center(child: Image.asset('assets/home-icon.png')),
    );
  }
}
