import 'package:email_auth/email_auth.dart';
import 'package:email_otp/email_otp.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/route_app.dart';
import '../view/screen/sgin_up_screen.dart';

abstract class VerificationBaseController extends GetxController {
  onChangedOtp(value, context);
  onChangedVerify(value, context, myauth);
  // verify(val);
  // sendOtp(val);
}

class VerificationController extends VerificationBaseController {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();
  final TextEditingController otpController5 = TextEditingController();
  final TextEditingController otpController6 = TextEditingController();
  String otpController = "1234";
  String timeFormat = DateFormat.Hm().format(DateTime.now());

  onChangedOtp(value, context) {
    if (value.length == 1) {
      FocusScope.of(context).nextFocus();
    }
    if (value.isEmpty) {
      FocusScope.of(context).previousFocus();
    }
    update();
  }

  onChangedVerify(value, context, myauth) async {
    if (value.isEmpty) {
      FocusScope.of(context).previousFocus();
    }

    if (await myauth.verifyOTP(
            otp: otpController1.text +
                otpController2.text +
                otpController3.text +
                otpController4.text +
                otpController5.text +
                otpController6.text) ==
        true) {
      Get.offAllNamed(AppRoutes.sginUpScreen);
      Get.dialog(Container(
        child: Text("OTP is verified"),
      ));
    } else {
      print("haneen");
    }

    update();
  }

//   autoConfirm(myauth) async {
//     if (await myauth.verifyOTP(
//             otp: otpController1.text +
//                 otpController2.text +
//                 otpController3.text +
//                 otpController4.text +
//                 otpController5.text +
//                 otpController6.text) ==
//         true) {
//       Get.offAllNamed(AppRoutes.sginUpScreen);
//       Get.dialog(Container(
//         child: Text("OTP is verified"),
//       ));
//     } else {
//       print("haneen");
//     }
//     update();
//   }
// }
// (
//   content: Text("OTP is verified"),
// // ));
// Get.SnackBar(
//   content: Text("OTP is verified"),
//  );
//  Get.(SginUpScreen())
// Navigator.push(context,
//     MaterialPageRoute(builder: (context) => SginUpScreen()));
// } else {
//   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//     content: Text("Invalid OTP"),
//   ));
// }

//   late EmailAuth emailAuth;
//   bool submitValid = false;

//   @override
//   void onInit() {
//     super.onInit();

//     // Initialize the package
//     emailAuth = new EmailAuth(
//       sessionName: "Sample session",
//     );

//   // @override

//   /// a Boolean function to verify if the Data provided is true
//   // verify(emailcontroller) {
//   //   return emailAuth.validateOtp(
//   //       recipientMail: emailcontroller.value.text,
//   //       userOtp: otpController.value.text);
//   // }

// //   @override
// //   sendOtp(emailController) async {
// //     bool result = await emailAuth.sendOtp(
// //         recipientMail: emailController.value.text, otpLength: 6);
// //     if (result) {
// //       submitValid = true;
// //     }
// //   }
// // }
}
