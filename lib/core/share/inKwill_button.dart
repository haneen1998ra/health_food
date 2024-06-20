import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:health_food_app/core/constant/app_colors.dart';

class InKwillButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final Color color;
  final double fontSize;
  InKwillButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.color = Colors.green,
      this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Text(
          text,
          style: TextStyle(
              color: color, fontSize: fontSize, fontWeight: FontWeight.w500),
        ),
        onTap: onTap,
      ),
    );
  }
}
