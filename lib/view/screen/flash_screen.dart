import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/controller/home_controller.dart';

import '../../core/constant/app_images.dart';

class FlashScreen extends StatelessWidget {
  FlashController flashController = Get.put(FlashController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    // flashController.showCharacter.value == true;
    // flashController.ChangeScreen();
    return GetBuilder<FlashController>(
        init: FlashController(),
        builder: (context) {
          // if (flashController.showCharacter.value == true) {
          return Scaffold(
              body: Padding(
            padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
            child: Image(image: AssetImage(AppImages().baseImageFlash)),
          ));
          // } else {
          // return LoginScreen();
          // }
        });
  }
}

//           return Stack(
//             fit: StackFit.expand,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     'assets/images/Rectangle 11 (1).png',
//                     width: controller.animation.value * 100,
//                     height: controller.animation.value * 100,
//                   ),
//                 ],
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// @override
// void initState() {
//   // TODO: implement initState
//   super.initState();
//   Future.delayed(Duration(seconds: 3), () {
//     showCharacter = false;
//   });
// }

// @override
// void onReady() {
//   // TODO: implement onReady
//   super.onReady();
// Timer.periodic(Duration(seconds:
// 30), (timer) {
//   print('cek user profile gan');
//   funfetchUser();
// });
// void navigateToLoginScreen() async {
//   await Future.delayed(Duration(seconds: 3));
//   Get.offNamed('/loginScreen');
// }

// @override
// Widget build(BuildContext context) {
//   return
//       // if (flashController.showCharacter = true) {
//       Scaffold(
//           // backgroundColor: AppColors().screenColor,
//           body: Positioned(
//               top: 10,
//               left: 10,
//               child: Container(
//                 // height: homeController.height.value,
//                 // width: homeController.width.value,
//                 // decoration: BoxDecoration(
//                 //   shape: BoxShape.rectangle,
//                 // ),
//                 child: Image(image: AssetImage(AppImages().baseImageFlash)),
//               ))
//           // } else {

//           ); // return LoginScreen();
// }
