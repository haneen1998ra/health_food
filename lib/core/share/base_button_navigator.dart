import 'package:flutter/material.dart';
import 'package:health_food_app/core/constant/app_colors.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onTap;
  const NavigationButton(
      {required this.text, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: AppColors().borderButtonColor, width: 1.0),
        ),
        child: Align(
          child: Text(text,
              style: TextStyle(
                  fontSize: 20, color: Colors.green, fontFamily: 'Montaga')),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
