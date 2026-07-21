import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_shop/controllers/user_controller.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController uc = Get.put(UserController());

    return Scaffold(
      body: Column(
        children: [
          Gap(118),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(17),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Gap(72),
          SizedBox(
            width: 396,
            height: 306,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF9EA6BE),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: const Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 243, 77, 79),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: const BorderSide(color: Color(0xFFE2E4EB)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: const BorderSide(color: Color(0xFFE2E4EB)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: const BorderSide(color: Color(0xFFE2E4EB)),
                    ),
                  ),
                  controller: uc.emailController,
                ),
                Gap(32),
                Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9EA6BE),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: Color.fromARGB(255, 243, 77, 79),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: const BorderSide(
                            color: Color(0xFFE2E4EB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: const BorderSide(
                            color: Color(0xFFE2E4EB),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: const BorderSide(
                            color: Color(0xFFE2E4EB),
                          ),
                        ),
                      ),
                      controller: uc.passwordController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot passowrd?",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color.fromARGB(255, 243, 77, 79),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 77, 79),
                    fixedSize: const Size(600, 56),
                  ),
                  onPressed: () {
                    uc.signIn();
                  },
                  child: Text(
                    "SIGN IN",
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
        ],
      ),
    );
  }
}
