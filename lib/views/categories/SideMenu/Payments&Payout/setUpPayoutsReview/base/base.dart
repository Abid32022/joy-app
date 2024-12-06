import 'package:flutter/material.dart';

import '../../../../../../utils/appcolors.dart';
import '../../../../../../utils/mysize.dart';
import '../../../../../base/custom_textwidget.dart';

Widget PaymentReviewFields({
  String? label,
  String? hintText,
}) {
  return TextField(
    enabled: false,
    decoration: InputDecoration(
        label: Padding(
      padding: EdgeInsets.symmetric(horizontal: MySize.size12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextRegular(
              title: label!,
              fontSize: MySize.size15,
              fontWeight: FontWeight.w400,
              color: AppColors.hinttextcolor),
          SizedBox(
            height: MySize.size14,
          ),
          customTextMedium(
            title: hintText!,
            fontWeight: FontWeight.w500,
            fontSize: MySize.size18,
          )
        ],
      ),
    )),
  );
}
