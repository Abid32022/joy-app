import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_rich_text.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class Parcel_tracking_histroy extends StatelessWidget {
  const Parcel_tracking_histroy({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [
      ["03:30 PM :"," Order Received","Your order has been successfully received and is being processed."],
      ["03:31 PM :"," En Route to Pickup","Our delivery person is on the way to the pickup location."],
      ["03:31 PM :"," En Route to Pickup","Our delivery person is on the way to the pickup location."],
      ["03:45 PM :"," Arrived at Pickup Location","The delivery person has reached the pickup location and is preparing to collect the parcel."],
    ];
    MySize().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MySize.scaleFactorHeight * 18,
          horizontal: MySize.scaleFactorHeight * 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextMedium(
              title: 'Saturday, November 08, 2023',
              color: AppColors.disableTextColor90,
              fontWeight: FontWeight.w400,
              fontSize: MySize.size16),
          SizedBox(
            height: MySize.scaleFactorHeight * 10,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return    Padding(
                  padding:  EdgeInsets.only(bottom: MySize.size30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        color: AppColors.successColor7C,
                        size: MySize.size12,
                      ),
                      SizedBox(
                        width: MySize.scaleFactorWidth * 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomRichText(
                            text1: data[index][0],
                            text2:  data[index][1],
                            fontSize: MySize.size14,
                            color: AppColors.textColor53,
                          ),
                          SizedBox(
                            height: MySize.scaleFactorHeight * 5,
                          ),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 300,
                            child: customTextMedium(
                                title:  data[index][2],
                                color: AppColors.blackColor0,
                                fontWeight: FontWeight.w400,
                                fontSize: MySize.size14),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },),
          )
        ],
      ),
    );
  }
}
