import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_shop/app/routes/app_pages.dart';
import 'package:my_shop/controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController oc = Get.put(OnboardingController());

    return Obx(() {
      return Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
              oc.go_back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 243, 77, 79),
            ),
          ),
          automaticallyImplyLeading: oc.getLeadingShow,
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(0.0),
                backgroundColor: WidgetStateProperty.all(
                  const Color(0xffffffff),
                ),
              ),
              onPressed: () {
                Get.offNamed(Routes.signIn);
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'skip',
                    style: TextStyle(color: Color.fromARGB(255, 243, 77, 79)),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 243, 77, 79),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Gap(40),
              Stack(
                children: [
                  Center(child: Image.asset('assets/shapes.png')),
                  Center(
                    child: Column(
                      children: [Gap(100), Image.asset(oc.getTheIcon)],
                    ),
                  ),
                ],
              ),
              Gap(90),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    oc.getTitel,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600, // Fixed
                      color: Color.fromARGB(255, 243, 77, 79),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 16 * 1.5 * 3, // 72.0 logical pixels
                    child: Text(
                      oc.getParagraph,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                        color: Color.fromARGB(255, 128, 134, 154),
                      ),
                    ),
                  ),
                  Gap(20),
                  SizedBox(
                    width: 60,
                    height: 10,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(oc.getBall1),
                        Image.asset(oc.getBall2),
                        Image.asset(oc.getBall3),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(90),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 77, 79),
                  fixedSize: const Size(600, 56),
                ),
                onPressed: () {
                  oc.go_forward();
                },
                child: Text(
                  oc.getButtonText,
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
