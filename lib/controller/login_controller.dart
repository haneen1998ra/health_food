import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/core/constant/route_app.dart';
import 'package:health_food_app/view/screen/sgin_up_screen.dart';

abstract class LoginBaseController extends GetxController {
  buttonOnPrassed();
  onTapPassword();
  sendOtp();
  gotoSginUp();
}

class LoginController extends LoginBaseController {
  double height = 100;
  double width = 200;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  EmailOTP myauth = EmailOTP();

  TextEditingController loginEmileController = TextEditingController();
  TextEditingController loginNumberController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  bool isShowPassword = true;
  void buttonOnPrassed() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(AppRoutes.sginUpScreen);
      update();
    }
  }

  gotoSginUp() {
    Get.offAllNamed(AppRoutes.sginUpScreen);
  }
  // gotoVerificationCode() {
  //   Get.(AppRoutes.verificationScreen);
  // }

  onTapPassword() {
    isShowPassword != isShowPassword;
    update();
  }

  @override
  sendOtp() async {
    myauth.setConfig(
      appEmail: "contact@hdevcoder.com",
      appName: "health_food_app",
      userEmail: loginEmileController.text,
      otpLength: 6,
      otpType: OTPType.digitsOnly,
    );
    if (await myauth.sendOTP() == true) {
      Get.snackbar("seccess", "OTP has been sent");

      Get.offAllNamed(AppRoutes.verificationScreen);
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => OtpScreen(
      //               myauth: myauth,
      //             )));
    } else {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(const SnackBar(
      //   content: Text("Oops, OTP send failed"),
      // ));
    }
    update();
  }
}
// String? validatorName(value) {
//   if (value.isEmpty || value.length < 5) {
//     return ' the full name is very short must be at least 5';
//   }
//   return null;
//   update();
// }

// String? validatorEmail(value) {
//   if (value==) {
//      Get.snackbar(
//           icon: Icon(Icons.abc_sharp),
//           backgroundColor: Color(0xFFFFFF),
//           boxShadows: [BoxShadow(blurRadius: 1, color: Colors.grey)],
//           borderRadius: 10.0,
//           "Sorry!",
//           "Incorrect password or email");
//     }else{
//       return null;
//     }
//     update();

//   }
//   }

//   update();
// }

// String? validatorNumber(value) {
//   if (!value.isEmpty || value.length != 10) {
//     return ' Please enter your phone number includes 10 numbers';
//   } else {
//     return null;
//   }

//   update();
// }

// String val = '';

// String? validatorPassWord(value) {
//   val = value;
//   if (!val.isEmpty || val.length < 7) {
//     return 'Password must be al least 10 parameters';
//   } else {
//     return null;
//   }

//   update();
