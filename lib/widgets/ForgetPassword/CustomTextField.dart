import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({this.onChanged, super.key});
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      decoration: InputDecoration(
        label: const Text('Email Address'),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xffBEC5D1))),
      ),
    );
  }
}
