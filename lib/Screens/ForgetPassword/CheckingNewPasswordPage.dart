// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:restaurant_app/core/Style.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomButton.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomCheckIcon.dart';

class CheckingNewPassword extends StatelessWidget {
  const CheckingNewPassword({super.key});
  static String id = 'CheckEmailPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            const CustomCheckIcon(),
            const SizedBox(
              height: 29,
            ),
            Text(
              'Success',
              style: Styles.style
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 29,
            ),
            Text(
              'your password has been changed',
              style: Styles.style.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 33,
            ),
            const SizedBox(
              height: 198,
            ),
            CustomButton(
              onTap: () {},
              textButton: 'sign in',
              textButtonColor: const Color(0xffffffff),
              backGroundColor: const Color(0xff32B768),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
