import 'package:flutter/material.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_textwidget.dart';

class TypeOfPlaceComponent extends StatelessWidget {
  const TypeOfPlaceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size18,
        ),
        customTextRegular(
          title: "Type of place",
          color: AppColors.titleColor29,
          fontSize: MySize.size18,
          // fontFamily: 'EnnVisions',
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.size14,
        ),
        customTextRegular(
          title: "Find rooms, entire homes, or any kind of accommodation.",
          color: AppColors.titleColor29,
          fontSize: MySize.size16,
          // fontFamily: 'EnnVisions',
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: MySize.size14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width:MySize.scaleFactorWidth * 104,
              height: MySize.scaleFactorHeight * 58,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: MySize.scaleFactorWidth * 1,
                      color: Color(0xFFDDDDDD)),
                  borderRadius: BorderRadius.circular(MySize.size10),
                ),
              ),
              child: Center(
                child: customTextMedium(
                  title: 'ANY TYPE',
                  color: Color(0xFF02091D),
                  fontSize: MySize.size15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width:MySize.scaleFactorWidth * 104,
              height: MySize.scaleFactorHeight * 58,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: MySize.scaleFactorWidth * 1,
                      color: Color(0xFFDDDDDD)),
                  borderRadius: BorderRadius.circular(MySize.size10),
                ),
              ),
              child: Center(
                child: customTextMedium(
                  title: 'ROOM',
                  color: Color(0xFF02091D),
                  fontSize: MySize.size15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width:MySize.scaleFactorWidth * 105,
              height: MySize.scaleFactorHeight * 58,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: MySize.scaleFactorWidth * 1,
                      color: Color(0xFFDDDDDD)),
                  borderRadius: BorderRadius.circular(MySize.size10),
                ),
              ),
              child: Center(
                child: customTextMedium(
                  title: 'ENTIRE HOME',
                  color: Color(0xFF02091D),
                  fontSize: MySize.size15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          ],
        ),
        SizedBox(
          height: MySize.size20,
        ),
        Divider(
          thickness: 0.5,
          color: Color(0xFFC6C6C8),

        )
      ],
    );
  }
}
