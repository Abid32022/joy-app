import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class XpDestinationDetail extends StatelessWidget {
  const XpDestinationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      //  height: MySize.scaleFactorHeight * 260,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size8),
          border: Border.all(color: AppColors.borderColorAD, width: 1),
          color: AppColors.backGroundColorFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MySize.scaleFactorHeight * 10,
                horizontal: MySize.scaleFactorWidth * 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    customTextMedium(
                        title: "Pickup:",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    customTextRegular(
                        title: " Reception Desk",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                customTextRegular(
                    title: "Saturday,  November 08, 2023 ",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                customTextRegular(
                    title: "Time Est: 3:00 PM  -  6:00 PM",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                customTextRegular(
                    title: "7250 Keele St, Vaughan, ON L4K 1Z8, Canada",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
              ],
            ),
          ),
          Divider(
            color: AppColors.lineColorC8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MySize.scaleFactorHeight * 10,
                horizontal: MySize.scaleFactorWidth * 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    customTextMedium(
                        title: "Delivery:",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                    customTextRegular(
                        title: "  Tom Jones",
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                customTextRegular(
                    title: "Saturday,  November 08, 2023",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                customTextRegular(
                    title: "Time: 05:30 PM",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
                customTextRegular(
                    title: "7250 Keels St. Vaughan, ON L4K 1Z8 Canada",
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
