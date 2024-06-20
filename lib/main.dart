import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/controller/testController.dart';
import 'package:health_food_app/core/constant/app_colors.dart';
import 'package:health_food_app/core/constant/route_app.dart';
import 'package:health_food_app/view/screen/flash_screen.dart';
import 'package:health_food_app/view/screen/get_dialog.dart';
import 'package:health_food_app/view/screen/login_screen.dart';
import 'package:health_food_app/view/screen/sgin_up_screen.dart';

import 'package:health_food_app/view/screen/verification_code_screen.dart';
import 'package:health_food_app/view/widget/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(backgroundColor: AppColors().screenColor),
      // A widget which will be started on application startup
      home: TestScreen(),
    );
  }
}
