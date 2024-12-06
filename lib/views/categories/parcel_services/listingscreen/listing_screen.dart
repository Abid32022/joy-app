import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../parcelrequestdetail/parcel_request_detail.dart';
import 'base/package_receiver.dart';
import 'base/package_sender.dart';

class ListingScreenn extends StatefulWidget {
  const ListingScreenn({super.key});

  @override
  State<ListingScreenn> createState() => _ListingScreennState();
}

class _ListingScreennState extends State<ListingScreenn> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onBackTap: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.backGroundColorFA,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomAppBar(backArrow: () {
              //   Get.back();
              // }),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MySize.scaleFactorWidth * 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySize.size18,
                    ),
                    Row(
                      children: [
                        customTextMedium(
                            title: 'Parcel Request',
                            fontSize: MySize.size22,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor0),
                        Spacer(),
                        SvgPicture.asset(
                          AppConstant.ic_parcel,
                          height: MySize.scaleFactorHeight * 36,
                          width: MySize.scaleFactorWidth * 36,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size18,
                    ),
                    customTextRegular(
                        title: 'Your address is only shared with guests after they\'ve made a reservation.',
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subTitleColor37),
                    SizedBox(
                      height: MySize.size20,
                    ),
                    PackageSender(
                      onTap: (){
                        Get.to(ParcelRequestDetail());
                      },
                    ),
                    SizedBox(
                      height: MySize.size20,
                    ),
                    PackageReceiver(),
                    SizedBox(
                      height: MySize.size20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
