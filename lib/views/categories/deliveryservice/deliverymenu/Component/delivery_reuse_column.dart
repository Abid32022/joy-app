import 'package:flutter/material.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';


class ReuseColumn extends StatelessWidget {
  String text1;
  String text2;
   ReuseColumn({
     required this.text1,
     required this.text2,
     super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      customTextMedium(title: text1,fontSize: MySize.size18,fontWeight: FontWeight.w500),
      SizedBox(height: MySize.size3),
      customTextRegular(title: text2,fontSize: MySize.size14,fontWeight: FontWeight.w400),
    ],);
  }
}
