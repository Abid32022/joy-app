import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_button.dart';
import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';

class BottomSheetMethods {
  List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  void ClassesDetailsSheet(BuildContext context) {
    displayClassesDetailsSheet(context);
  }

  void ClassBookingSheet(BuildContext context) {
    displayClassBookingSheet(context);
  }

  void BookingConfrim_Message(BuildContext context) {
    displayBookingConfrim_Message(context);
  }

  Future displayClassesDetailsSheet(BuildContext context) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySize.size20)),
      context: context,
      backgroundColor: AppColors.whiteColorFF,
      builder: (context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size20),
          color: AppColors.backGroundColorFA,
        ),
        height: MySize.scaleFactorHeight * 740,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySize.size19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MySize.scaleFactorHeight * 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextMedium(
                          title: 'Ladies Apex Martial Arts.',
                          fontWeight: FontWeight.w500,
                          fontSize: MySize.size18),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            displayWhoJoinYou(context);
                          },
                          child: customTextMedium(
                              title: '12/23',
                              fontWeight: FontWeight.w400,
                              fontSize: MySize.size18)),
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  customTextLight(
                      title:
                          'In Evesham, we\'re unique in our approach to education. We recognize that the learning needs of a five-year-old and a ten-year-old are quite different. That\'s why we have distinct classes for three age groups: 4-6, 7-9, and 10-14-year-olds. This ensures that each student receives tailored instruction for their stage of development.',
                      fontSize: MySize.size16,
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  customDivider(width: MySize.scaleFactorHeight * 403),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextMedium(
                          title: 'Kickboxing',
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                      customTextLight(
                          title: 'Mon 21 Aug 2023',
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
                      customTextLight(
                          title: '07:00 PM - 08:30 PM',
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 10,
                  ),
                  customDivider(width: MySize.scaleFactorHeight * 403),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    minVerticalPadding: 0,
                    horizontalTitleGap: MySize.size10,
                    leading: Image.asset(AppConstant.dp2),
                    title: customTextMedium(
                        title: 'Marc Wilson',
                        fontSize: MySize.size18,
                        fontWeight: FontWeight.w500),
                    subtitle: customTextLight(
                        title: 'Karate, Krav Maga, Taekwondo, Muay Thai',
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500),
                  ),
                  customDivider(width: MySize.scaleFactorHeight * 403),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 13,
                  ),
                  customTextMedium(
                      title: 'Ladies Apex Time Table',
                      fontSize: MySize.size18,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 11,
                  )
                ],
              ),
            ),
            ListView.builder(
              itemCount: 7,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if (index != 0)
                      customDivider(
                        width: MySize.scaleFactorHeight * 360,
                      ),
                    Container(
                      height: MySize.size40,
                      decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? AppColors.lineColorE5
                            : AppColors.whiteColorFF,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.scaleFactorWidth * 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customTextMedium(
                                title: days[index],
                                fontSize: MySize.size18,
                                fontWeight: FontWeight.w500),
                            customTextLight(
                              title:
                                  index != 6 ? '07:00 PM - 08:30 PM' : '--',
                              fontWeight: FontWeight.w500,
                              fontSize: MySize.size16,
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MySize.scaleFactorHeight * 13,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MySize.scaleFactorHeight * 15),
                    child: customButton(
                        text: 'BOOK NOW',
                        ontap: () {
                          Navigator.of(context).pop();
                          displayClassBookingSheet(context);
                        },
                        colors: AppColors.lineColorE5,
                        width: MySize.scaleFactorWidth * 360,
                        height: MySize.scaleFactorHeight * 46,
                        borderColor: AppColors.lineColorE5,
                        borderRadius: MySize.size10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future displayClassBookingSheet(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.whiteColorFF,
      context: context,
      shape: RoundedRectangleBorder(),
      isScrollControlled: true,
      builder: (context) => Container(
        height: MySize.scaleFactorHeight * 460,
        child: Padding(
          padding: EdgeInsets.only(
              left: MySize.scaleFactorHeight * 15, right: MySize.size12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      customTextMedium(
                          title: 'Confirm Booking',
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: 7,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: customTextLight(
                              title:
                                  'Please review the following infomation and \nclick confirm to complete your booking!',
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              fontSize: MySize.size16)),
                      SizedBox(
                        height: MySize.size18,
                      ),
                    ],
                  ),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size10),
                      side: BorderSide(width: .5, color: AppColors.borderColorAD),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.close,
                          size: MySize.size30,
                        )),
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: MySize.size10,
                shape: Border(top: BorderSide(color: AppColors.lineColorE5)),
                minVerticalPadding: 0,
                leading: SvgPicture.asset(AppConstant.ic_class_name),
                title: customTextMedium(
                    title: "Class Name",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size18),
                trailing: customTextLight(
                    title: 'Martial art Brazilian Wrestling',
                    fontSize: MySize.size15,
                    fontWeight: FontWeight.w400),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: MySize.size10,
                shape: Border(top: BorderSide(color: AppColors.lineColorE5)),
                minVerticalPadding: 0,
                leading: SvgPicture.asset(AppConstant.ic_class_date),
                title: customTextMedium(
                    title: "Class Date",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size18),
                trailing: customTextLight(
                    title: '31 December, 2023',
                    fontSize: MySize.size15,
                    fontWeight: FontWeight.w400),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: MySize.size10,
                shape: Border(top: BorderSide(color: AppColors.lineColorE5)),
                minVerticalPadding: 0,
                leading: SvgPicture.asset(AppConstant.ic_class_time),
                title: customTextMedium(
                    title: "ClassTimings",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size18),
                trailing: customTextLight(
                    title: '07:00 pm – 08: 50 pm',
                    fontSize: MySize.size15,
                    fontWeight: FontWeight.w400),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: MySize.size10,
                shape: Border(
                    bottom: BorderSide(color: AppColors.lineColorE5),
                    top: BorderSide(color: AppColors.lineColorE5)),
                minVerticalPadding: 0,
                leading: Padding(
                  padding: EdgeInsets.only(left: MySize.size4),
                  child: SvgPicture.asset(AppConstant.ic_instrictor),
                ),
                title: customTextMedium(
                    title: "Instructor",
                    fontWeight: FontWeight.w500,
                    fontSize: MySize.size18),
                trailing: customTextLight(
                    title: 'Benedict Cumberbatch',
                    fontSize: MySize.size15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MySize.size12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton(
                      text: 'CANCEL',
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w700,
                      width: MySize.scaleFactorHeight * 173,
                      colors: AppColors.lineColorE5,
                      borderRadius: MySize.size10,
                      borderColor: AppColors.lineColorE5,
                      ontap: () {
                        Navigator.of(context).pop();
                      }),
                  customButton(
                      text: 'CONFIRM',
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w700,
                      width: MySize.scaleFactorHeight * 173,
                      colors: AppColors.lineColorC8,
                      borderRadius: MySize.size10,
                      borderColor: AppColors.lineColorC8,
                      ontap: () {
                        Navigator.of(context).pop();
                        displayBookingConfrim_Message(context);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future displayBookingConfrim_Message(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.whiteColorFF,
      context: context,
      isScrollControlled: false,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding:
                  EdgeInsets.only(top: MySize.size16, right: MySize.size12),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MySize.size10),
                  side: BorderSide(width: .5, color: AppColors.borderColorAD),
                ),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      size: MySize.size30,
                    )),
              ),
            ),
          ),
          SvgPicture.asset(
            AppConstant.ic_success,
            height: MySize.scaleFactorHeight * 61,
            width: MySize.scaleFactorWidth * 61,
            color: AppColors.completedFinishedColor4D,
          ),
          SizedBox(
            height: MySize.size14,
          ),
          customTextMedium(
              title: 'Booking Confirmed',
              fontSize: MySize.size18,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: MySize.scaleFactorHeight * 5,
          ),
          customTextLight(
              title:
                  'Your booking is confirmed and ready to create \nwonderful memories!',
              fontSize: MySize.size18,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center),
          SizedBox(
            height: MySize.scaleFactorHeight * 27,
          ),
        ],
      ),
    );
  }

  Future displayWhoJoinYou(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: AppColors.whiteColorFF,
      context: context,
      isScrollControlled: true,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MySize.size16,
                  right: MySize.size12,
                  left: MySize.scaleFactorWidth * 114),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MySize.size6,
                      ),
                      customTextMedium(
                          title: 'Ladies Apex Martial Arts.',
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: MySize.scaleFactorWidth * 7,
                      ),
                      customTextLight(
                          title: '31 December, 2023, 07:00 pm',
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500),
                    ],
                  ),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MySize.size10),
                      side:
                          BorderSide(width: .5, color: AppColors.borderColorAD),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.close,
                          size: MySize.size30,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                minVerticalPadding: 0,
                leading: customTextMedium(
                    title: 'Image',
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w500),
                title: customTextMedium(
                    title: 'Student Name',
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w500),
                trailing: customTextMedium(
                    title: '3/20',
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w500),
              ),
              ListTile(
                leading: Image.asset(AppConstant.dp2),
                horizontalTitleGap: MySize.size14,
                minLeadingWidth: MySize.size2,
                title: customTextMedium(
                    title: 'Daniel Day-Lewis',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                subtitle: customTextLight(
                    title: '+14167045420',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.right),
                trailing: Image.asset(
                  AppConstant.ic_bar1,
                  width: MySize.scaleFactorWidth * 100,
                ),
              ),
              ListTile(
                leading: Image.asset(AppConstant.dp3),
                horizontalTitleGap: MySize.size14,
                minLeadingWidth: MySize.size2,
                title: customTextMedium(
                    title: 'Daniel Day-Lewis',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                subtitle: customTextLight(
                    title: '+14167045420',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                trailing: Image.asset(
                  AppConstant.ic_bar3,
                  width: MySize.scaleFactorWidth * 100,
                ),
              ),
              ListTile(
                leading: Image.asset(AppConstant.dp4),
                horizontalTitleGap: MySize.size14,
                minLeadingWidth: MySize.size2,
                title: customTextMedium(
                    title: 'Daniel Day-Lewis',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                subtitle: customTextLight(
                    title: '+14167045420',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                trailing: Image.asset(
                  AppConstant.ic_bar4,
                  width: MySize.scaleFactorWidth * 100,
                ),
              ),
              ListTile(
                leading: Image.asset(AppConstant.dp5),
                horizontalTitleGap: MySize.size14,
                minLeadingWidth: MySize.size2,
                title: customTextMedium(
                    title: 'Daniel Day-Lewis',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                subtitle: customTextLight(
                    title: '+14167045420',
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500),
                trailing: Image.asset(
                  AppConstant.ic_bar5,
                  width: MySize.scaleFactorWidth * 100,
                ),
              ),
              SizedBox(
                height: MySize.size60,
              ),
            ],
          )
        ],
      ),
    );
  }
}
