import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:my_shop/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  var buttonText = ''.obs;
  var titel = ''.obs;
  var paragraph = ''.obs;
  var theIcon = ''.obs;
  var ball_1 = ''.obs;
  var ball_2 = ''.obs;
  var ball_3 = ''.obs;
  var leading_show = false.obs;
  var the_state_num = 1.obs;
  String get getButtonText => buttonText.value;
  String get getTitel => titel.value;
  String get getParagraph => paragraph.value;
  String get getTheIcon => theIcon.value;
  String get getBall1 => ball_1.value;
  String get getBall2 => ball_2.value;
  String get getBall3 => ball_3.value;
  bool get getLeadingShow => leading_show.value;
  int get getTheStateNum => the_state_num.value;

  @override
  void onInit() {
    buttonText.value = "Next";
    titel.value = "Search Restaurants";
    paragraph.value =
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
    theIcon.value = 'assets/restaurant.png';
    ball_1.value = 'assets/dots_black.png';
    ball_2.value = 'assets/dots.png';
    ball_3.value = 'assets/dots.png';
    leading_show.value = true;
    the_state_num.value = 1;
    super.onInit();
  }

  void state_one() {
    buttonText.value = "Next";
    titel.value = "Search Restaurants";
    paragraph.value =
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
    theIcon.value = 'assets/restaurant.png';
    ball_1.value = 'assets/dots_black.png';
    ball_2.value = 'assets/dots.png';
    ball_3.value = 'assets/dots.png';
    the_state_num.value = 1;
    leading_show.value = false;
  }

  void state_two() {
    buttonText.value = "Next";
    titel.value = "Choose favorite dishes!";
    paragraph.value =
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
    theIcon.value = 'assets/fast-food.png';
    ball_1.value = 'assets/dots.png';
    ball_2.value = 'assets/dots_black.png';
    ball_3.value = 'assets/dots.png';
    leading_show.value = true;
    the_state_num.value = 2;
  }

  void state_three() {
    buttonText.value = "get started";
    titel.value = "Get your food";
    paragraph.value =
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
    theIcon.value = 'assets/fast-delivery.png';
    ball_1.value = 'assets/dots.png';
    ball_2.value = 'assets/dots.png';
    ball_3.value = 'assets/dots_black.png';
    leading_show.value = true;
    the_state_num.value = 3;
  }

  void go_back() {
    switch (the_state_num.value) {
      case 2:
        {
          state_one();
          break;
        }
      case 3:
        {
          state_two();
          break;
        }
    }
  }

  void go_forward() {
    switch (the_state_num.value) {
      case 1:
        {
          state_two();
          break;
        }
      case 2:
        {
          state_three();
          break;
        }
      case 3:
        {
          Get.offNamed(Routes.signIn);
          break;
        }
    }
  }
}
