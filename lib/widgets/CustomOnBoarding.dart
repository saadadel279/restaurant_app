import 'package:flutter/material.dart';
import 'package:restaurant_app/core/Styles.dart';

class CustomOnBoarding extends StatelessWidget {
  CustomOnBoarding({this.subtitle, this.title, this.imageUrl, super.key});
  Color backGroundPageColor = const Color(0xffFFFFFF);
  String? imageUrl;
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backGroundPageColor),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(imageUrl!),
            const SizedBox(
              height: 77.27,
            ),
            Text(
              title!,
              style: styles.style.copyWith(
                  fontSize: 24,
                  color: const Color(0xff1F2937),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              subtitle!,
              style: styles.style
                  .copyWith(fontSize: 12, color: const Color(0xff4B5563)),
              textAlign: TextAlign.center,
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
