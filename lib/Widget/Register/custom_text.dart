import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   const CustomText({Key? key, required this.AddresText}) : super(key: key) ;
final String? AddresText;
  @override
  Widget build(BuildContext context) {
    return  Text(
      AddresText!,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    );
  }
}
