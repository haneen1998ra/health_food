import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:health_food_app/controller/login_controller.dart';
import 'package:health_food_app/core/share/base_button_navigator.dart';

import '../../controller/SginUp_controller.dart';
import '../../core/functions/validator_input.dart';

import '../../core/share/inKwill_button.dart';
import '../../core/share/textFiled_widget.dart';

import '../widget/sgin_up_screen_widgets/upload_picture.dart';

class SginUpScreen extends StatelessWidget {
  SginUpController sginUpController =
      Get.put(SginUpController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFFF), Color(0xfface7b1)])),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: sginUpController.formKey,
            child: Column(children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 80, bottom: 30, right: 40, left: 40),
                child: Container(
                    height: 80,
                    width: 80,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: sginUpController.isLoading
                        ? IconButton(
                            onPressed: () {
                              sginUpController.filePicker(['png', 'jpg']);
                            },
                            icon: Icon(
                              Icons.photo_camera,
                              size: 30,
                              color: Color(0xff307233),
                            ),
                          )
                        : Image.file(sginUpController.filetodisplay!)),
              ),

//  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Center(
//               child:
//           if (packedFile != null)
//             SizedBox(height: 400, width: 400, child:
//               const SizedBox(
//                 height: 15,
//               ),

              TextFiledWidget(
                controller: sginUpController.usernameController,
                hinText: 'Username',
                validator: (value) {
                  return validInput(value!, 5, 20, "username");
                },
                keyboardType: TextInputType.text,
              ),

              const SizedBox(
                height: 15,
              ),

              TextFiledWidget(
                isShowPassword: false,
                controller: sginUpController.emailController,
                validator: (value) {
                  return validInput(value!, 5, 50, "email");
                },
                keyboardType: TextInputType.emailAddress,
                hinText: 'email',
                icon: Icons.edit_square,
              ),

              const SizedBox(
                height: 15,
              ),
              TextFiledWidget(
                  controller: sginUpController.numberPhoneController,
                  keyboardType: TextInputType.number,
                  hinText: 'Mobile Number',
                  validator: (value) {
                    return validInput(value!, 10, 15, "phone");
                  }),
              const SizedBox(
                height: 15,
              ),

              TextFiledWidget(
                  hinText: 'Password',
                  validator: (value) {
                    return validInput(value!, 10, 15, "password");
                  },
                  isShowPassword: sginUpController.isShowPassword,
                  keyboardType: TextInputType.text,
                  icon: sginUpController.isShowPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onTap: () {
                    sginUpController.onTapPassword();
                  },
                  controller: sginUpController.passwordController),
              const SizedBox(
                height: 15,
              ),
              TextFiledWidget(
                  hinText: 'Confirm Password',
                  validator: (value) {
                    sginUpController.checkPassword(value!);
                  },
                  keyboardType: TextInputType.text,
                  icon: sginUpController.isShowPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  isShowPassword: sginUpController.isShowPassword,
                  onTap: () {
                    sginUpController.onTapPassword();
                  },
                  controller: sginUpController.confirmPasswordController),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFiledWidget(
                    onTap: () {
                      sginUpController.filePicker(['PDF']);
                    },
                    textAlign: TextAlign.center,
                    icon: Icons.cloud_upload,
                    hinText: "Certificate PDF file",
                    // : sginUpController.fileName,
                    validator: (value) {
                      return validInput(value!, 1, 1, "file");
                    },
                    keyboardType: TextInputType.none,
                    controller: sginUpController.certPDFController),
              ),

              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
                child: NavigationButton(
                    text: 'sgin up',
                    color: Color(0xff6ae86e),
                    onTap: () {
                      sginUpController.signUp();
                    }),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(
                        color: Color(0xff226824),
                      ),
                    ),
                    InKwillButton(
                        onTap: () {
                          sginUpController.gotologin();
                        },
                        color: Color(0xff226824),
                        text: 'log in')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )

              // NavigationButton(
              //   color: Colors.black,
              //   text: 'sginup',
              //   onTap: () => sginUpController.sginFunction(),
              // ),
            ]),
          ),
        ),
      ),
    ));
  }
}

// PasswordText(label:'Password' , value: value, error: error, hiddingPass: hiddingPass, showPassButton: showPassButton, callBackpass: callBackpass, passwordController: passwordController)
// PasswordText(
//     'Password',
//     sginUpController.pass1,
//     sginUpController.error1,
//     sginUpController.isHidingPassword,
//     true,
//     sginUpController.togglePassword()),

//     PasswordText(label, value, error, hiddingPass, showPassButton, callBackpass)
// PasswordText(
//     'Confirm Password',
//     sginUpController.pass2,
//     sginUpController.error2,
//     sginUpController.isHidingPassword,
//     false,
//
//    sginUpController.togglePassword()),
