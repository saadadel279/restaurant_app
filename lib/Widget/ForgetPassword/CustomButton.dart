// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:restaurant_app/core/Style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.textButtonColor,
      this.textButton,
      this.onTap,
      this.backGroundColor,
      super.key});
  final Color? backGroundColor;
  final Color? textButtonColor;
  final String? textButton;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 49,
        width: 256,
        decoration: BoxDecoration(
            color: backGroundColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            textButton!,
            style: Styles.style.copyWith(
                color: textButtonColor,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
