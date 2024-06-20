import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class CertificatePDFfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 29.0, left: 128, right: 212),
      child: GestureDetector(
        onTap: () {},
        child: TextField(
          decoration: InputDecoration(
              fillColor: AppColors().buttonfilledColor,
              hintText: 'Certificate PDF file ',
              suffixIcon: Icon(Icons.cloud_upload_sharp),
              //  loginController.hinTextPassword.value,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    BorderSide(width: 1, color: AppColors().borderButtonColor),
              )),
        ),
      ),
    );
  }
}
