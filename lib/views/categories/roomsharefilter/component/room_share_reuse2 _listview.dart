import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class ReUseListView2 extends StatelessWidget {
  String title;
  List text;
  int? itemCount;
  int? selectedValue;
  void Function(int?)? onChanged;

  ReUseListView2({
    required this.title,
    required this.text,
    required this.itemCount,
    this.selectedValue,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MySize.size16),
        customTextMedium(
          title: title,
          fontSize: MySize.size18,
          fontWeight: FontWeight.w500,
        ),
        ListView.builder(
          itemCount: itemCount,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                customTextRegular(
                  title: text[index],
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.2,
                  child: Checkbox(
                    activeColor: AppColors.primaryColor62,
                    checkColor: AppColors.primaryColor62,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size20),
                    ),
                    side: BorderSide(
                      color: AppColors.lineColorAD,
                      width: 0.5,
                    ),
                    value: selectedValue == index,
                    onChanged: (value) {
                      onChanged?.call(index);
                    },
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: MySize.size10,
        ),
        customDivider(
          color: AppColors.lineColorAD,
          width: double.infinity,
        ),
      ],
    );
  }
}
