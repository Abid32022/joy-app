import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_divider.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class DoctorDetail extends StatelessWidget {
  const DoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColorFF,
        border: Border.all(
            width: 0.1,
            color: AppColors.borderColorAD
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 12),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: MySize.scaleFactorHeight * 122,
                      width: MySize.scaleFactorWidth * 104,
                      child: Image.asset(AppConstant.doctor1,fit: BoxFit.fill,),
                    ),
                  ],
                ),
                SizedBox(width: MySize.size15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.btnColorDE,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9,top:
                        6,bottom: 6,right: 9),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppConstant.doctor_tick),
                            SizedBox(width: MySize.size7,),
                            customTextRegular(title: "Professional "
                                "Doctor",fontSize: MySize.size14)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MySize.size6,),
                    customTextMedium(title: "Dr. Jane Cooper",fontSize: MySize.size18),
                    SizedBox(height: MySize.size4,),
                    customTextRegular(title: "Dentist"),
                    SizedBox(height: MySize.size6,),
                    SizedBox(
                      width: MySize.scaleFactorHeight * 215,
                      child: Row(
                        children: [
                          RatingBar.builder(
                            itemSize: MySize.size14,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.all(2),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          customTextMedium(title: "4.5",),
                          Spacer(),
                          SizedBox(
                              height: 10,
                              child: customDivider(width: 0.5,
                                  color:AppColors.borderColorAD)
                          ),
                          Spacer(),
                          customTextRegular(title: "49 Reviews",
                              color: AppColors.borderColorAD),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MySize.size15,),
          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: SizedBox(
              width: double.infinity,
              height: MySize.size48,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.btnColorDE,
                    elevation: 0,

                  ),
                  onPressed: (){}, child: customTextMedium
                (title: "MAKE APPOINTMENT")),
            ),
          ),
          SizedBox(height: MySize.size14,),
        ],
      ),
    );
  }
}
