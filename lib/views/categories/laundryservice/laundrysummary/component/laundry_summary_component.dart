import 'package:flutter/material.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';



class ReUseRow extends StatelessWidget {
  String text1;
  String text2;
  ReUseRow({
    required this.text1,
    required this.text2,
    super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Row(children: [
      customTextRegular(
        title: text1,
        fontSize: MySize.size16,
        fontWeight: FontWeight.w400,
      ),
      Spacer(),
      customTextMedium(
          title: text2,
          fontSize: MySize.size16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline
      ),
      customTextRegular(
          title: "CAD",
          fontSize: MySize.size16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline
      ),
    ]);
  }
}