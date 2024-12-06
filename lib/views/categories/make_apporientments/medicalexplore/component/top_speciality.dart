import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/appconstant.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';



class TopSpeciality extends StatefulWidget {
  const TopSpeciality({super.key});

  @override
  State<TopSpeciality> createState() => _TopSpecialityState();
}

class _TopSpecialityState extends State<TopSpeciality> {

  List doctor = [
    [AppConstant.doctor2,"Dr. Jane Cooper",AppColors.btnColorDE,"MAKE APPOINTMENT",AppColors.blackColor00],
    [AppConstant.doctor1,"Dr. Amina Hafeez",AppColors.backGroundColorEA,"Next Available 10:00 AM Tomorrow",AppColors.disableTextColorAD],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctor.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
      return Column(children: [
        Row(children: [
          customTextMedium(
              title: "Top Speciality",
              fontSize: MySize.size18,
              fontWeight: FontWeight.w500),
          Spacer(),
          customTextMedium(
              title: "See All",
              fontSize: MySize.size14,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor62
          ),
        ],),
        Container(
          margin: EdgeInsets.only(top: MySize.size14,bottom: MySize.size6),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.whiteColorFF,
            border: Border.all(
                width: 1,
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
                          child: Image.asset(doctor[index][0],fit: BoxFit.fill,),
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
                        customTextMedium(title: doctor[index][1],fontSize: MySize.size18),
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
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySize.size8)),
                        backgroundColor: doctor[index][2],
                        elevation: 0,
                      ),
                      onPressed: (){}, child: customTextMedium
                    (title: doctor[index][3],
                    color: doctor[index][4],
                  )),
                ),
              ),
              SizedBox(height: MySize.size14,),
            ],
          ),
        ),
      ],);
    },);
  }
}
