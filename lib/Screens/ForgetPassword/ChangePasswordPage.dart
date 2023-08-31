// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Screens/ForgetPassword/CheckingNewPasswordPage.dart';
import 'package:restaurant_app/core/Style.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomButton.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomTextField.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  Color? buttonColor;
  Color? textButtonColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            'Enter New Password',
            style: Styles.style
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Enter your registered email below',
            style: Styles.style
                .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 90,
          ),
          CustomTextfield(
              onChanged: (val) {
                setState(() {
                  buttonColor = val.isEmpty
                      ? const Color(0xffF4F4F4)
                      : const Color(0xff32B768);
                  textButtonColor = val.isEmpty
                      ? const Color(0xff9CA3AF)
                      : const Color(0xffF4F4F4);
                });
              },
              label: 'New Password'),
          const SizedBox(
            height: 36,
          ),
          CustomTextfield(
            onChanged: (val) {
              setState(() {
                buttonColor = val.isEmpty
                    ? const Color(0xffF4F4F4)
                    : const Color(0xff32B768);
                textButtonColor = val.isEmpty
                    ? const Color(0xff9CA3AF)
                    : const Color(0xffF4F4F4);
              });
            },
            label: 'confirm Password',
          ),
          const Spacer(
            flex: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: () {
                  Get.to(() => const CheckingNewPassword(),
                      transition: Transition.rightToLeft);
                },
                textButton: 'Submit',
                backGroundColor: buttonColor,
                textButtonColor: textButtonColor,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    ));
  }
}
