import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class MessageChats extends StatefulWidget {
  const MessageChats({Key? key}) : super(key: key);

  @override
  _MessageChatsState createState() => _MessageChatsState();
}

class _MessageChatsState extends State<MessageChats> {
  bool valueee = false;
  List item = ["Email", "Email", "Push notification", "SMS", "Phone Calls"];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(MySize.size16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextMedium(
                title: "Messages/Chats",
                fontSize: MySize.size20,
                fontWeight: FontWeight.w500),
            SizedBox(
              height: MySize.size14,
            ),
            customTextRegular(
                title: "Notify users about new messages/chat updates.",
                fontSize: MySize.size17,
                color: Color(0xff606060),
                fontWeight: FontWeight.w400),
            Divider(
              thickness: 1,
              color: AppColors.lineColorC8,
            ),
            SizedBox(
              height: MySize.size14,
            ),
            ListView.builder(
              itemCount: item.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
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
                          vertical: MySize.size14, horizontal: MySize.size12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextRegular(
                              title: item[index],
                              fontSize: MySize.size17,
                              color: AppColors.blackColor00,
                              fontWeight: FontWeight.w400),
                          GFToggle(
                            onChanged: (val) {
                              setState(() {
                                valueee = !valueee;
                              });
                            },
                            value: valueee,
                            enabledTrackColor: Color(0xff026F62),
                            disabledTrackColor: Colors.grey,
                            enabledThumbColor: Colors.white,
                            disabledThumbColor: Colors.white,
                            enabledText: "",
                            type: GFToggleType.custom,
                            disabledText: "",
                            boxShape: BoxShape.circle,
                            duration: Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
