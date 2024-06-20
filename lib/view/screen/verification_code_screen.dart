import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/controller/SginUp_controller.dart';
import 'package:health_food_app/controller/login_controller.dart';
import 'package:health_food_app/controller/verification_controller.dart';

import 'package:health_food_app/core/share/inKwill_button.dart';
import 'package:health_food_app/view/widget/verification_code_screen_widgets/otp_textfiled.dart';
import 'package:health_food_app/view/widget/verification_code_screen_widgets/row_code_verif.dart';
import 'package:health_food_app/view/widget/verification_code_screen_widgets/subText.dart';

import '../../core/constant/app_colors.dart';
import '../../core/constant/app_images.dart';
import '../../core/share/image_asset.dart';

class VerificationCodeScreen extends StatelessWidget {
  VerificationController verificationController =
      Get.put(VerificationController(), permanent: true);
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  size.height * 0.53),
            // child: ImageWidget(),

            Padding(
              padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
              child: Image(image: AssetImage(AppImages().baseImageFlash)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Verification Code",
                  style: TextStyle(
                    fontFamily: 'Montaga',
                    fontSize: 24,
                    color: Color(0xff307233),
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                  "We have sent the verification code to your email address",
                  style: TextStyle(
                    fontFamily: 'Montaga',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  )),
            ),

            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Otp(
                    otpController: verificationController.otpController1,
                    onChanged: (String value) {
                      verificationController.onChangedOtp(value, context);
                    },
                  ),
                  Otp(
                    onChanged: (String value) {
                      verificationController.onChangedOtp(value, context);
                    },
                    otpController: verificationController.otpController2,
                  ),
                  Otp(
                    onChanged: (String value) {
                      verificationController.onChangedOtp(value, context);
                    },
                    otpController: verificationController.otpController3,
                  ),
                  Otp(
                    onChanged: (String value) {
                      verificationController.onChangedOtp(value, context);
                    },
                    otpController: verificationController.otpController4,
                  ),
                  Otp(
                    onChanged: (String value) {
                      verificationController.onChangedOtp(value, context);
                    },
                    otpController: verificationController.otpController5,
                  ),
                  Otp(
                    onChanged: (String value) {
                      verificationController.onChangedVerify(
                          value, context, loginController.myauth);
                    },

                    // verificationController.autoConfirm(
                    //     verificationController
                    //         .autoConfirm(loginController.myauth),
                    //   );
                    // },
                    otpController: verificationController.otpController6,
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: BuildPaddingSubText(),
            // ),

            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                verificationController.timeFormat,
                style: TextStyle(
                    color: Color(0xff307233),
                    fontFamily: 'Montaga',
                    fontSize: 20),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: InKwillButton(
                  text: 'Send again',
                  color: Color(0xff307233),
                  onTap: () {
                    loginController.sendOtp();
                    // verificationController
                    // .sendOtp(sginUpController.emailController);
                  }),
            ),

            //   ],
            // ),

            // AppTextStyle().HeadLineTextStyle,
            // ),
            // SizedBox(
            //   height: size.height * 0.1,
            // ),

            // ),
            //  ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: size.height * 0.82,
            //       left: size.width * 0.48,
            //       right: size.width * 0.53),
            //   child:
          ],
        ),
      ),
    );
  }
}
