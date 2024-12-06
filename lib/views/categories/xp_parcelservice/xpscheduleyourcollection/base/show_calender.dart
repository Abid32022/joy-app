import 'package:flutter/material.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

class ShowCalendar extends StatelessWidget {
  const ShowCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Dialog(

      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySize.size8),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MySize.size5, horizontal: MySize.size5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                // padding: EdgeInsets.all(MySize.size5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorC8),
                    color: AppColors.backGroundColorFA),
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                  onDateChanged: (value) {},
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: MySize.size7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorC8),
                    color: Color(0xffEFEFEF)),
                child: Center(
                  child: customTextRegular(
                      title: "Mon, August 11, 2023",
                      fontSize: MySize.size17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: MySize.size14,
              ),
              Container(
                // padding: EdgeInsets.all(MySize.size5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MySize.size8),
                    border: Border.all(color: AppColors.lineColorC8),
                    color: AppColors.backGroundColorFA),
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                  onDateChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
