import 'package:flutter/material.dart';
import 'package:joyapp/providers/rentandsale_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/appcolors.dart';
import '../../../../../utils/mysize.dart';
import '../../../../base/custom_divider.dart';
import '../../../../base/custom_textwidget.dart';


class AccommodationComponents extends StatelessWidget {
  const AccommodationComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MySize.size17,
        ),
        customTextMedium(
          title: "Accommodation",
          color: Colors.black,
          fontSize: MySize.size20,
          // fontFamily: 'EnnVisions',
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: MySize.size18,
        ),
       Consumer<SaleAndRentProvider>(builder: (context, selectedTabProvider, child) {
         return  Row(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             InkWell(
               onTap: (){
                 selectedTabProvider.setSelectedTabIndex(0);
               },
               child: customTextMedium(
                 title: "Residential",
                 color: selectedTabProvider.selectedTabIndex == 0 ? Colors.black : Color(0xFF606060),
                 fontSize: MySize.size16,
                 // fontFamily: 'EnnVisions',
                 fontWeight: FontWeight.w500,
               ),
             ),
             SizedBox(
               width: MySize.size28,
             ),
             InkWell(
               onTap: (){
                 selectedTabProvider.setSelectedTabIndex(1);
               },
               child: customTextMedium(
                 title: "Plot",
                 color: selectedTabProvider.selectedTabIndex == 1 ? Colors.black : Color(0xFF606060),
                 fontSize: MySize.size16,
                 // fontFamily: 'EnnVisions',
                 fontWeight: FontWeight.w500,
               ),
             ),
             SizedBox(
               width: MySize.size28,
             ),
             InkWell(
               onTap: (){
                 selectedTabProvider.setSelectedTabIndex(2);
               },
               child: customTextMedium(
                 title: "Commercial",
                 color: selectedTabProvider.selectedTabIndex == 2 ? Colors.black : Color(0xFF606060),
                 fontSize: MySize.size16,
                 // fontFamily: 'EnnVisions',
                 fontWeight: FontWeight.w500,
               ),
             ),
           ],

         );
       },),
        SizedBox(
          height: MySize.size7,
        ),
        customDivider(
            color: AppColors.dividerColor,
            width: double.infinity,
            height: MySize.scaleFactorHeight * 1),

      ],
    );
  }
}
