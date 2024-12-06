import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_app_bar.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelrequest/base/xp_package_receiver.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelrequest/base/xp_package_sender.dart';
import 'package:joyapp/views/categories/xp_parcelservice/xpparcelrequestdetail/xp_parcel_request_detail.dart';
class XpParcelRequest extends StatefulWidget {
  const XpParcelRequest({super.key});

  @override
  State<XpParcelRequest> createState() => _XpParcelRequestState();
}

class _XpParcelRequestState extends State<XpParcelRequest> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.backGroundColorFA,
      appBar: CustomAppBar(
        onBackTap: (){
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                      title: 'Order Status',
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
                  title: 'Monitor the status or your oder',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.subTitleColor37),
              SizedBox(
                height: MySize.size20,
              ),
              XpPackageSender(
                onTap: (){
                  Get.to(XpParelRequestDetail());
                },
              ),
              SizedBox(
                height: MySize.size20,
              ),
              XpPackageReceiver(),
              SizedBox(
                height: MySize.size20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
