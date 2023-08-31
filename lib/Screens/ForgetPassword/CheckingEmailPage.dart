// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Screens/ForgetPassword/ChangePasswordPage.dart';
import 'package:restaurant_app/core/Style.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomButton.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomCheckIcon.dart';

class CheckingEmail extends StatelessWidget {
  const CheckingEmail({super.key});
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
              'Please check your email for create\na new password',
              style: Styles.style
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 33,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Can't get email?",
                    style: Styles.style.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff6B7280))),
                TextSpan(
                    text: "Resubmit",
                    style: Styles.style.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff32B768))),
              ]),
            ),
            const SizedBox(
              height: 189,
            ),
            CustomButton(
              onTap: () {
                Get.to(() => const ChangePassword(),
                    transition: Transition.zoom);
              },
              textButton: 'Ok',
              textButtonColor: const Color(0xffFFFFFF),
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
