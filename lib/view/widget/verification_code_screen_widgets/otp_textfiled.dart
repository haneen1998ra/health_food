import "package:email_otp/email_otp.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_food_app/view/screen/sgin_up_screen.dart';

class Otp extends StatelessWidget {
  final TextEditingController otpController;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const Otp({
    required this.otpController,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: validator,
        controller: otpController,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: ('0'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Color(0xDBE1DF), width: 5),
          ),
        ),
        autocorrect: true,
        autofocus: true,
        onSaved: (value) {},
      ),
    );
  }
}
