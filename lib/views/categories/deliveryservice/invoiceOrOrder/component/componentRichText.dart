import 'package:flutter/material.dart';

import '../../../../../utils/appcolors.dart';

class RchText extends StatelessWidget {
  String text;
  String text1;
  RchText({super.key,required this.text,required this.text1});

  @override
  Widget build(BuildContext context) {
    return   Text.rich(
      TextSpan(
          text: text,
          style: TextStyle(fontSize: 16),
          children: [TextSpan(text: text1,style:
          TextStyle(color: AppColors.primaryColor62))]),
    );
  }
}
