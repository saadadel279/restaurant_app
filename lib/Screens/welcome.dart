import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 135, left: 25),
            child: Image.asset('assets/images/Order Success.jpg',
                height: 280, width: 225),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              'Welcome',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          Container(
            width: 245,
            height: 42,
            margin: const EdgeInsets.only(top: 8),
            alignment: Alignment.center,
            child: const Text(
              'Before enjoying Foodmedia services, please register first',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5, // Line height equivalent in Flutter
                letterSpacing: 0,
                // Add other text styles here if needed
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 256,
              height: 49,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(
                    0xFF32B768), // You can replace this with your desired color
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 256,
              height: 49,
              margin: const EdgeInsets.only(left: 50),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(
                    0xffD1FAE5), // You can replace this with your desired color
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.3, vertical: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('By logging in or registering, you have agreed to'),
                    Text(
                      ' the Terms and',
                      style: TextStyle(color: Color(0xff32B768)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Conditions',
                      style: TextStyle(color: Color(0xff32B768)),
                    ),
                    Text(' And'),
                    Text(
                      ' Privacy Policy.',
                      style: TextStyle(color: Color(0xff32B768)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
