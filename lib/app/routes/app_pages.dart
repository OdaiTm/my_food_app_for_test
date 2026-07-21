import 'package:get/get.dart';
import 'package:my_shop/views/add_new_address.dart';
import 'package:my_shop/views/add_new_card.dart';
import 'package:my_shop/views/conferm_opt.dart';
import 'package:my_shop/views/edit_profile.dart';
import 'package:my_shop/views/forgot_password.dart';
import 'package:my_shop/views/forgot_password_email_sent.dart';
import 'package:my_shop/views/my_address.dart';
import 'package:my_shop/views/my_favorite.dart';
import 'package:my_shop/views/onboarding_screen.dart';
import 'package:my_shop/views/order_history.dart';
import 'package:my_shop/views/payment_method.dart';
import 'package:my_shop/views/profile.dart';
import 'package:my_shop/views/sign_in.dart';
import 'package:my_shop/views/sing_up.dart';
import 'package:my_shop/views/splash_screen.dart';
import 'package:my_shop/views/verify_ur_num.dart';
part 'routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.addNewAddress,
      page: () =>
          const AddNewAddress(), // Replace with your actual Widget class name
    ),
    GetPage(name: Routes.addNewCard, page: () => const AddNewCard()),
    GetPage(name: Routes.confermOpt, page: () => const ConfermOpt()),
    GetPage(name: Routes.editProfile, page: () => const EditProfile()),
    GetPage(
      name: Routes.forgotPasswordEmailSent,
      page: () => const ForgotPasswordEmailSent(),
    ),
    GetPage(name: Routes.forgotPassword, page: () => const ForgotPassword()),
    GetPage(name: Routes.myAddress, page: () => const MyAddress()),
    GetPage(name: Routes.myFavorite, page: () => const MyFavorite()),
    GetPage(
      name: Routes.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage(name: Routes.orderHistory, page: () => const OrderHistory()),
    GetPage(name: Routes.paymentMethod, page: () => const PaymentMethod()),
    GetPage(name: Routes.profile, page: () => const Profile()),
    GetPage(name: Routes.signIn, page: () => const SignIn()),
    GetPage(name: Routes.signUp, page: () => const SingUp()),
    GetPage(name: Routes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: Routes.verifyUrNum, page: () => const VerifyUrNum()),
  ];
}
