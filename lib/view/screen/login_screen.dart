import 'package:email_otp/email_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:health_food_app/controller/SginUp_controller.dart';

import '../../controller/login_controller.dart';
import '../../controller/verification_controller.dart';
import '../../core/functions/validator_input.dart';
import '../../core/share/base_button_navigator.dart';
import '../../core/share/image_asset.dart';
import '../../core/share/inKwill_button.dart';
import '../../core/share/textFiled_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginController loginController = Get.put(LoginController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    var sizeHight = MediaQuery.of(context).size.height;
    var sizeWidth = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    loginController.height = sizeHight;
    loginController.width = sizeWidth;

    return Scaffold(
        body: Form(
            key: loginController.formKey,
            child: SingleChildScrollView(
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 90, bottom: 30),
                  child: ImageWidget(
                    height: sizeHight * 0.5,
                    width: sizeWidth * 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7.0),
                      child: TextFiledWidget(
                          isShowPassword: false,
                          controller: loginController.loginEmileController,
                          hinText: 'email',
                          icon: Icons.edit,
                          validator: (value) =>
                              validInput(value!, 3, 40, "email"),
                          keyboardType: TextInputType.emailAddress),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7.0),
                      child: TextFiledWidget(
                        isShowPassword: false,
                        controller: loginController.loginNumberController,
                        hinText: 'Mobile Number',
                        validator: (value) =>
                            validInput(value!, 7, 11, "phone"),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7.0),
                        child: TextFiledWidget(
                          controller: loginController.loginPasswordController,
                          hinText: 'Password',
                          validator: (value) =>
                              validInput(value!, 10, 15, "password"),
                          isShowPassword: loginController.isShowPassword,
                          keyboardType: TextInputType.text,
                          icon: loginController.isShowPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onTap: () {
                            loginController.onTapPassword();
                          },
                        )),

                    SizedBox(
                      height: 10,
                    ),
                    //         Padding(
                    //           padding: const EdgeInsets.symmetric(
                    //               horizontal: 10, vertical: 7.0),
                    //           child:  PasswordText(
                    // 'Password',
                    // sginUpController.pass1,
                    // sginUpController.error1,
                    // sginUpController.isHidingPassword,
                    // true,
                    // sginUpController.togglePassword()),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 16),
                      child: NavigationButton(
                        text: 'log in',
                        color: Color(0xffcfe7cf),
                        onTap: () => loginController.buttonOnPrassed(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                          InKwillButton(onTap: () {}, text: 'Remember me'),
                          SizedBox(
                            width: 100,
                          ),
                          InKwillButton(
                              onTap: () {
                                loginController.sendOtp();
                                // loginController.gotoVerificationCode();
                              },
                              text: 'Forgot Password'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: NavigationButton(
                        text: 'Create new account',
                        color: Colors.grey,
                        onTap: () {
                          loginController.gotoSginUp();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ]),
                ),
              ]),
            )));
  }
}
