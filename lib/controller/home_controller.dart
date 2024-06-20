import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class FlashController extends GetxController {
  RxBool showCharacter = true.obs;
  RxDouble height = 402.0.obs;
  RxDouble width = 495.0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      showCharacter.value = false;
    });
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    // Timer.periodic(Duration(seconds:
    // 30), (timer) {
    //   print('cek user profile gan');
    //   funfetchUser();
    // });
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed('/loginPage');
    });
  }
}

// import 'package:get/get_rx/get_rx.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:health_food_app/view/screen/login_screen.dart';

// abstract class HomeController extends GetxController {
//   // bool showCharacter = true;
//   // navigationToLoginScreen();

//   // RxDouble height = 402.0.obs;
//   // RxDouble width = 495.0.obs;
// }

// class FlashController extends HomeController {
//   // @override
//   // void onInit() {
//   //   super.onInit();

//   //   Future.delayed(Duration(seconds: 5), () {
//   //     showCharacter = false;
//   //   });
//   // }

//   @override
//   void onReady() {
//     super.onReady();

//     navigationToLoginScreen();
//   }

//   Future navigationToLoginScreen() async {
//     await Future.delayed(Duration(seconds: 5));
//     Get.to(() => LoginScreen());
//   }
// }
// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:get/get_rx/get_rx.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';

// abstract class HomeController extends GetxController {
//   RxBool showCharacter = true.obs;
//   RxDouble height = 402.0.obs;
//   RxDouble width = 495.0.obs;
// }

// import 'package:health_food_app/view/screen/login_screen.dart';

// class FlashController extends GetxController {
//   // final RxBool showCharacter = true.obs;

//   @override
//   void onReady() {
//     ChangeScreen();
//     super.onReady();
//   }

//   Future ChangeScreen() async {
//     await Future.delayed(
//       const Duration(seconds: 5),
//     );
//     Get.to(LoginScreen);
//   }

//   @override
//   void onReady() {
//     // TODO: implement onReady
//     super.onReady();
//     // Timer.periodic(Duration(seconds:
//     // 30), (timer) {
//     //   print('cek user profile gan');
//     //   funfetchUser();
//     // });
//     Future.delayed(Duration(seconds: 3), () {
//       Get.offNamed('/LoginScreen');
//     });
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SplashBaseController extends GetxController
//     with GetSingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<double> animation;

//   @override
//   void onInit() {
//     animationInitilization();
//     super.onInit();

// animationInitilization() {
//   animationController =
//       AnimationController(vsync: this, duration: const Duration(seconds: 2));
//   animation =
//       CurvedAnimation(parent: animationController, curve: Curves.easeOut)
//           .obs
//           .value;
//   animation.addListener(() => update());
//   animationController.forward();
//   }
// // }
// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:get/get_rx/get_rx.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';

// class HomeController extends GetxController {
//   RxBool showCharacter = true.obs;
//   RxDouble height = 402.0.obs;
//   RxDouble width = 495.0.obs;

//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     Future.delayed(Duration(seconds: 3), () {
//       showCharacter.value = false;
//     });
//   }

//   @override
//   void onReady() {
//     // TODO: implement onReady
//     super.onReady();
//     // Timer.periodic(Duration(seconds:
//     // 30), (timer) {
//     //   print('cek user profile gan');
//     //   funfetchUser();
//     // });
//     Future.delayed(Duration(seconds: 3), () {
//       Get.offNamed('/loginPage');
//     });
//   }
// }
