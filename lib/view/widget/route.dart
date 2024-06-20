import 'package:flutter/material.dart';
import 'package:health_food_app/core/constant/route_app.dart';
import 'package:health_food_app/view/screen/login_screen.dart';
import 'package:health_food_app/view/screen/sgin_up_screen.dart';

import '../screen/verification_code_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.loginScreen: (context) => LoginScreen(),
  AppRoutes.sginUpScreen: (context) => SginUpScreen(),
  AppRoutes.verificationScreen: (context) => VerificationCodeScreen(),
};
