import 'package:firstapp/features/authentication/screens/welcome/welcome.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(()=> const WelcomeScreen());
  }
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 10));
    animate.value = true;
  }

}