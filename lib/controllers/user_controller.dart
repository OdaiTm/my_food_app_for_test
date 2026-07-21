import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:my_shop/app/routes/app_pages.dart';
import 'package:my_shop/models/user_model.dart';
import 'package:my_shop/services/auth_service.dart';

class UserController extends GetxController {
  var currentUser = UserModel().obs;
  var isLoading = true.obs;
  var email = ''.obs;
  var password = ''.obs;
  var isValidEmail = true.obs;
  var isValidpassword = true.obs;
  var showPass = true.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void updateEmail(String email) {
    this.email.value = email;
  }

  void updatePass(String password) {
    this.password.value = password;
  }

  Future<void> signIn() async {
    if (isValidEmail.value && isValidpassword.value) {
      try {
        isLoading.value = true;

        final user = await AuthService.getUsers(
          emailController.text,
          passwordController.text,
        );

        if (user != null) {
          currentUser.value = user;
          currentUser.refresh();
          Get.offNamed(Routes.profile);
        } else {
          Get.snackbar("Error", "Invalid credentials");
        }
      } catch (e) {
        Get.snackbar(
          "Error",
          "Connection failed: $e",
          snackPosition: SnackPosition.BOTTOM,
        );
      } finally {
        isLoading.value = false;
      }
    }
  }
}
