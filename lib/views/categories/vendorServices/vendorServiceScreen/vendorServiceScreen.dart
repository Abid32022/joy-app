import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../vendorListScreen/vendorListScreen.dart';

class VendorServiceScreen extends StatefulWidget {
  const VendorServiceScreen({super.key});

  @override
  State<VendorServiceScreen> createState() => _VendorServiceScreenState();
}

class _VendorServiceScreenState extends State<VendorServiceScreen> {
  @override
  Widget build(BuildContext context) {
    List item = [
      [AppConstant.ic_maintenance, "IMPROVEMENT"],
      [AppConstant.ic_maintenance, "MAINTENANCE"],
      [AppConstant.ic_improvement, "INSPECTION"],
      [AppConstant.ic_maintenance, "LANDSCAPING"],
      [AppConstant.ic_improvement, "REAL ESTATE"],
      [AppConstant.ic_maintenance, "MOVING"],
      [AppConstant.ic_improvement, "PHOTOGRAPHY"],
      [AppConstant.ic_maintenance, "FINANCIAL"],
      [AppConstant.ic_improvement, "MISCELLANEOUS"],
      [AppConstant.ic_maintenance, "OFFICE SETUP"],
    ];
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.vendorBgColor,
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size24,
              ),
              customTextMedium(
                title: "Your Listing",
                fontSize: MySize.size24,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: MySize.size15,
              ),
              customTextRegular(
                  title:
                      "Your address is only shared with guests after they've "
                      "made a reservation.",
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400),
              SizedBox(
                height: MySize.size15,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: item.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: MySize.scaleFactorHeight * 105),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Get.to(VendorListScreen());
                  },
                  child: Container(
                    // height: 100,
                    // width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.borderColorAD.withOpacity(0.2),
                            width: 0.5)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            item[index][0],
                            width: MySize.size34,
                            height: MySize.size34,
                          ),
                          SizedBox(
                            height: MySize.scaleFactorHeight * 11,
                          ),
                          customTextBold(title: item[index][1])
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
