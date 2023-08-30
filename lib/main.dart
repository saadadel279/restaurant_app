import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:restaurant_app/Screens/ForgetPassword/CheckingEmail.dart';
import 'package:restaurant_app/Screens/ForgetPassword/ForgetPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        ForgetPasswordPage.id: (context) => ForgetPasswordPage(),
        CheckingEmail.id: (context) => CheckingEmail(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ForgetPasswordPage(),
      ),
    );
  }
}
