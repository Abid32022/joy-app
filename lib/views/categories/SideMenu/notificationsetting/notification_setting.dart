import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/sidemenu/notificationsetting/base/message&chats.dart';

import '../restpassword/rest_password.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  List item = [
    ["Messages/Chats", "Notify users about new messages/chat updates."],
    [
      "Updates/News",
      "Inform users about app updates, news, or important announcements."
    ],
    ["Reminders", "Send reminders for tasks, appointments, or events.."],
    [
      "Social Interactions",
      "Notify users about friend requests, mentions, or interactions from other users."
    ],
    [
      "Promotions/Deals",
      "Inform users about discounts, promotions, or special offers."
    ],
    [
      "Alerts/Warnings",
      "Notify users about important alerts or warnings related to their account or the app."
    ],
    [
      "Activity",
      "Inform users about activity related to their account, such as likes, follows, or comments."
    ],
    [
      "Product Updates",
      "Notify users about new features or enhancements to the app."
    ],
    [
      "Feedback/Reviews",
      "Notify users about feedback received or encourage them to leave reviews."
    ],
    [
      "App Status",
      "Alert users about scheduled maintenance, downtime, or issues with the app."
    ],
    [
      "Location-Based",
      "Provide notifications based on the user's location or proximity to certain places."
    ],
    [
      "Personalization",
      "Allow users to create custom notification categories based on their preferences."
    ],
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      backgroundColor: AppColors.backGroundColorFA,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size14,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(RestPassword());
                },
                child: customTextMedium(
                    title: "Login & Security",
                    fontSize: MySize.size22,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.size8),
                  color: AppColors.backGroundColorFA,
                  border: Border.all(
                    color: AppColors.lineColorC8,
                    width: 1,
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MySize.size20, horizontal: MySize.size14),
                    child: ListView.builder(
                      itemCount: item.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customTextRegular(
                                        title: item[index][0],
                                        fontSize: MySize.size18,
                                        color: AppColors.blackColor0,
                                        fontWeight: FontWeight.w400),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 250,
                                      child: customTextRegular(
                                          title: item[index][1],
                                          fontSize: MySize.size15,
                                          color: Color(0xff606060),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(
                                                    MySize.size14),
                                                topLeft: Radius.circular(
                                                    MySize.size14))),
                                        context: context,
                                        builder: (context) => MessageChats(),
                                      );
                                    },
                                    icon: SvgPicture.asset(
                                        AppConstant.ic_black_edit))
                              ],
                            ),
                            if (index <
                                item.length -
                                    1) // Check if it's not the last item
                              Divider(
                                thickness: 1,
                                color: AppColors.lineColorC8,
                              ),
                          ],
                        );
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
