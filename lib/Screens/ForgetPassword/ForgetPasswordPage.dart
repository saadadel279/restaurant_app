// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Screens/ForgetPassword/CheckingEmailPage.dart';
import 'package:restaurant_app/Screens/Welcome%20and%20Register/creat_account_and_login_screen.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomButton.dart';
import 'package:restaurant_app/Widget/ForgetPassword/CustomTextField.dart';
import 'package:restaurant_app/core/Style.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});
  static String id = 'ForgetPasswordPage';
  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
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
              'Forget Password',
              style: Styles.style.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xff374151),
              ),
            ),
            Text(
              'Enter your registered email below',
              style: Styles.style.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xff9CA3AF),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextfield(
              label: 'Email address',
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
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return BodyOfShowModelBottomSheet(creatAccount:false);
                 },));
              },
              child: RichText(
                
                  text: TextSpan(children: [
                    
                TextSpan(
                
                    text: 'Remember the password?',
                    style: Styles.style.copyWith(
                        color: const Color(0xff9CA3AF),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                
                    text: ' Sign in',
                    style: Styles.style.copyWith(color: const Color(0xff32B768)))
              ])),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  textButtonColor: textButtonColor,
                  textButton: 'Submit',
                  backGroundColor: buttonColor,
                  onTap: () {
                    Get.to(() => const CheckingEmail(),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
