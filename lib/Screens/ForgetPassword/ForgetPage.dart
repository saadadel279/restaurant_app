import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Screens/ForgetPassword/CheckingEmail.dart';
import 'package:restaurant_app/core/Styles.dart';
import 'package:restaurant_app/widgets/ForgetPassword/CustomButton.dart';
import 'package:restaurant_app/widgets/ForgetPassword/CustomTextField.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});
  static String id = 'ForgetPasswordPage';
  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  Color? primaryColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            'Forget Password',
            style: styles.style.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff374151),
            ),
          ),
          Text(
            'Enter your registered email below',
            style: styles.style.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xff9CA3AF),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextfield(
            onChanged: (val) {
              setState(() {
                primaryColor = val.isEmpty
                    ? const Color(0xffF4F4F4)
                    : const Color(0xff32B768);
                print(val);
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Remember the password?',
                style: styles.style.copyWith(
                    color: const Color(0xff9CA3AF),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
            TextSpan(
                text: ' Sign in',
                style: styles.style.copyWith(color: const Color(0xff32B768)))
          ])),
          const Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                backGroundcolor: primaryColor,
                OnTap: () {
                  Navigator.pushNamed(context, CheckingEmail.id);
                },
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
