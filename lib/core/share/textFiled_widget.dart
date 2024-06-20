import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/controller/SginUp_controller.dart';
import 'package:health_food_app/core/constant/app_colors.dart';

class TextFiledWidget extends StatelessWidget {
  final String hinText;
  final IconData? icon;
  final bool isShowPassword;
  final String? Function(String?) validator;
  // final String? Function(String?) onSaved;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final void Function()? onTapIcon;
  final void Function()? onTap;
  final TextAlign textAlign;

//  LoginController loginController=Get.find()

  TextFiledWidget({
    required this.hinText,
    this.icon,
    required this.validator,
    // required this.onSaved,
    required this.keyboardType,
    required this.controller,
    this.isShowPassword = false,
    this.onTapIcon,
    this.onTap,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: textAlign,
        onTap: onTap,
        textInputAction: TextInputAction.next,
        controller: controller,
        obscureText: isShowPassword,
        // == null || isShowPassword == false ? false : true,
        // maxLines: 3,
        validator: validator,
        // onSaved: onSaved,
        keyboardType: keyboardType,
        style: TextStyle(fontSize: 15),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          filled: true,
          fillColor: Color(0xfff3f9f3),
          hintText: hinText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: InkWell(
            child: GetBuilder<SginUpController>(
              init: SginUpController(),
              builder: (context) => Icon(
                icon,
                size: 16,
              ),
            ),
            onTap: onTap,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xDBE1DF), width: 5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.0),
          ),
        )
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(4)),
        //   borderSide: BorderSide(width: 1, color: Color(0xffe33b3b)),
        // )),
        );
  }
}
