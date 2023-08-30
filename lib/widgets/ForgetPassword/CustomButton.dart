import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/core/Styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({OnTap, this.backGroundcolor, Key? key});
  Color? backGroundcolor;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 49,
        width: 256,
        decoration: BoxDecoration(
            color: backGroundcolor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            'Submit',
            style: styles.style
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
