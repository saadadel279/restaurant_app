import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:restaurant_app/Screens/ForgetPassword/CheckingEmailPage.dart';
import 'package:restaurant_app/Screens/ForgetPassword/ForgetPasswordPage.dart';
import 'package:restaurant_app/Screens/Onboarding/OnboardingPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        ForgetPasswordPage.id: (context) => const ForgetPasswordPage(),
        CheckingEmail.id: (context) => const CheckingEmail(),
      },
      debugShowCheckedModeBanner: false,

      home: const OnboardingPage(),

    );
  }
}
