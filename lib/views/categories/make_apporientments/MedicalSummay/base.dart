import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/appconstant.dart';
import '../../../../utils/mysize.dart';
import '../../../base/custom_textwidget.dart';

class ReuseableRow extends StatelessWidget {
  final String category;
  final String text;
  final String text2;
  final bool cad;
   ReuseableRow({
     required this.category,
     required this.text,
     this.text2='CAD',
      this.cad = true,
     super.key});

  @override
  Widget build(BuildContext context) {
    return cad ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customTextLight(title: category,fontSize: MySize.size18,fontWeight: FontWeight.w400),
        customTextMedium(title: text,fontWeight: FontWeight.w500,fontSize: MySize.size18),
      ],
    ) : Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      category.contains('Total (CAD)')
        ? customTextMedium(title: category,fontSize: MySize.size18,fontWeight: FontWeight.w400)
        : customTextLight(title: category,fontSize: MySize.size18,fontWeight: FontWeight.w400),
    RichText(text: TextSpan(
      children: [
        WidgetSpan(child: customTextMedium(title: text,fontWeight: FontWeight.w500,fontSize: MySize.size18,decoration: TextDecoration.underline),
        ),
        WidgetSpan(child: SizedBox(width: MySize.size2,)),
        WidgetSpan(child: customTextLight(title: text2,fontWeight: FontWeight.w500,fontSize: MySize.size18,decoration: TextDecoration.underline),
        )

      ]
    )
    ),
    ],
    );
  }
}

class ApointmentBottomSheet {
  void BookingConfrim_Message(BuildContext context) {
    displayBookingConfrim_Message(context);
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
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center),
          SizedBox(
            height: MySize.scaleFactorHeight * 27,
          ),
        ],
      ),
    );
  }

}