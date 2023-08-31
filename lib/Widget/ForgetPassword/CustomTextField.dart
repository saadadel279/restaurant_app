// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({this.onChanged, this.label, super.key});
  final Function(String)? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      decoration: InputDecoration(
        label: Text(label!),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xffBEC5D1))),
      ),
    );
  }
}
