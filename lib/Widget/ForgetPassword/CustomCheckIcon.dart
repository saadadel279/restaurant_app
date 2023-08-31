// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Color(0xff32B768),
      radius: 56,
      child: Icon(
        Icons.check_rounded,
        size: 80,
        color: Color(0xffFFFFFF),
      ),
    );
  }
}
