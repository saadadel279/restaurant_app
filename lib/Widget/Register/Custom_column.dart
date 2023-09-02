
import 'package:flutter/material.dart';
import 'package:restaurant_app/Widget/Register/Custom_TextField.dart';
import 'package:restaurant_app/Widget/Register/custom_text.dart';

class CustomColumn extends StatelessWidget {
   const CustomColumn({
    Key? key,
    required this.AddresText,
    required this.hintText,
  }): super(key: key);
final String? AddresText;
 final String? hintText;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         CustomText(AddresText: AddresText!),
         const SizedBox(height: 10),
          CustomTextField( hintText: hintText!),
           const SizedBox(height: 10,)
       ],
      ),
    );
  }
}
