// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:health_food_app/controller/SginUp_controller.dart';
// import 'package:health_food_app/core/constant/app_colors.dart';

// class TextFiledPassword extends StatelessWidget {
//   final String text;
//   final String? Function(String?) validator;
//   final void Function(String?)? onSaved;
//   final TextEditingController controller;

//   TextFiledPassword(
//       {required this.text,
//       required this.validator,
//       this.onSaved,
//       required this.controller});

//   // LoginController loginController = Get.find();
// // final String hinText;
// //   TextFiledPassword({ required this.hinText
// //   , });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//       child: TextFormField(
//         onSaved: onSaved,
//         validator: validator,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
//             filled: true,
//             fillColor: AppColors().buttonfilledColor,
//             hintText: text,
//             suffixIcon: IconButton(
//                 onPressed: () {},
//                 icon: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Icon(Icons.visibility_off,
//                       color: AppColors().colorIconFiledPassword),
//                 )),
//             //  loginController.hinTextPassword.value,

//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15.0),
//               borderSide:
//                   BorderSide(width: 2, color: AppColors().borderButtonColor),
//             )),
//       ),
//     );
//   }
// }
// //  class _TextInput
// // class PasswordText extends StatelessWidget {
// //   final RxString value;
// //   final RxString error;
// //   final String label;
// //   final bool showPassButton;
// //   final bool hiddingPass;
// //   final void Function()? callBackpass;
// //   final TextEditingController passwordController;

// //   const PasswordText(
// //       {required this.label,
// //       required this.value,
// //       required this.error,
// //       required this.hiddingPass,
// //       required this.showPassButton,
// //       required this.callBackpass,
// //       required this.passwordController});

// //   @override
// //   Widget build(BuildContext context) {
// //     return TextField(
// //       onChanged: value,
// //       obscureText: hiddingPass,
// //       decoration: InputDecoration(
// //         errorText: error(),
// //         counterText: ' ',
// //         labelText: label,
// //         suffixIcon: !showPassButton
// //             ? null
// //             : GestureDetector(
// //                 onTap: callBackpass,
// //                 //  controller.togglePassword,
// //                 child: Icon(
// //                   hiddingPass ? Icons.visibility : Icons.visibility_off,
// //                   size: 18,
// //                 ),
// //               ),
// //       ),
// //     );
// //   }
// // }
