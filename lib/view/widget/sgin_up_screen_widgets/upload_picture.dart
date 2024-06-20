import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/controller/SginUp_controller.dart';

class UploadPicture extends StatelessWidget {
  final void Function()? onTap;
  final image;

  UploadPicture({required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 40.0,
        child: CircleAvatar(
          radius: 38.0,
          child: ClipOval(
            // ignore: unnecessary_null_comparison
            child: (image != null)
                ? Image.file(image)
                : Icon(
                    Icons.photo_camera,
                    size: 30,
                    color: Color(0xff307233),
                  ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

// Image.file(filetodisplay!)),

// return Container(
//     height: 100,
//     width: 100,
//     decoration: BoxDecoration(
//         border: Border.all(width: 2, color: Color(0xff307233)),
//         borderRadius: BorderRadius.circular(50.0)),
//     child: Center(
//       child: MaterialButton(
//           child: controller.image == ' '
//               ? Icon(
//                   Icons.photo_camera,
//                   size: 30,
//                   color: Color(0xff307233),
//                 )
//               : Image.file(controller.image!),
//           onPressed: () {
//             controller.imageFunction();
//           }
// IconButton(
// icon:
//  controller.image == ''
// ? Icon(
//     Icons.photo_camera,
//     color: Colors.black,
//   )
// : Image.file(controller.image!),
// onPressed: () => controller.imageFunction(),
// ),
