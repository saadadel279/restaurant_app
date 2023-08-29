import 'package:flutter/material.dart';

class CustomOnBoarding extends StatelessWidget {
  CustomOnBoarding({super.key});
  Color backGroundPageColor = const Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backGroundPageColor),
      child: const Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
