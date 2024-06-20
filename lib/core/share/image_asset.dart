import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_food_app/core/constant/app_images.dart';

import '../../../controller/home_controller.dart';

class ImageWidget extends StatelessWidget {
  final double height;
  final double width;
  const ImageWidget({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      // decoration: BoxDecoration(
      //   shape: BoxShape.rectangle,
      // ),
      child: Image(
          fit: BoxFit.cover, image: AssetImage(AppImages().baseImageFlash)),
    );
  }
}
