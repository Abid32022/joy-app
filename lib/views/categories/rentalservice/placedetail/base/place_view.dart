import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';
class PlaceView extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String saleType;
  final String price;
  final String currency;
  final String propertyType;
  const PlaceView({super.key ,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.saleType,
    required this.price,
    required this.currency,
    required this.propertyType,});

  @override
  State<PlaceView> createState() => _PlaceViewState();
}

class _PlaceViewState extends State<PlaceView> {
  @override
  Widget build(BuildContext context ) {
    MySize().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MySize.scaleFactorHeight * 11),
          Container(
            height: MySize.scaleFactorHeight * 384,
            width: double.infinity,
            child: Stack(
              children: [
                PageView.builder(
                  itemCount:4,
                  pageSnapping: true,
                  itemBuilder: (context, index) {
                    return  ClipRRect(
                      child: Image.asset(
                        widget.imageUrl,
                        fit: BoxFit.fill,
                        height: MySize.scaleFactorHeight * 384,
                      ),
                    );
                  },),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.blackColor00,
                      borderRadius: BorderRadius.circular(MySize.size5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MySize.size6,
                        vertical: MySize.size3,
                      ),
                      child: customTextRegular(
                        title: '1/20',
                        fontSize: MySize.size14,
                        color: AppColors.backGroundColorFA,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MySize.size14),
          customTextMedium(
            title: widget.title,
            fontSize: MySize.size18,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: MySize.size8),
          customTextRegular(
            title: widget.description,
            fontSize: MySize.size16,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: MySize.size10),
          Row(
            children: [
              customTextRegular(
                title: widget.saleType,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                color: Color(0xff004E44),
                decoration: TextDecoration.underline,
              ),
              customTextMedium(
                title: widget.price,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor00,
                decoration: TextDecoration.underline,
              ),
              customTextRegular(
                title: widget.currency,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                color: AppColors.lineColorAD,
                decoration: TextDecoration.underline,
              ),
              Spacer(),
              customTextRegular(
                title: widget.propertyType,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                color: AppColors.lineColorAD,
              ),
            ],
          ),
          SizedBox(height: MySize.size8),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppConstant.like,
                height: MySize.scaleFactorHeight * 28,
                width: MySize.scaleFactorHeight * 28,
              ),
              SizedBox(width: MySize.size8),
              SvgPicture.asset(
                AppConstant.comment,
                height: MySize.scaleFactorHeight * 28,
                width: MySize.scaleFactorHeight * 28,
              ),
              SizedBox(width: MySize.size8),
              SvgPicture.asset(
                AppConstant.share,
                height: MySize.scaleFactorHeight * 28,
                width: MySize.scaleFactorHeight * 28,
              ),
              SizedBox(width: MySize.size8),
              Spacer(),
              SvgPicture.asset(
                AppConstant.nestify,
                height: MySize.scaleFactorHeight * 25,
                width: MySize.scaleFactorHeight * 65,
                fit: BoxFit.fill,
              ),
              SizedBox(width: MySize.size8),
              customTextMedium(
                title: 'Communicate',
                fontSize: MySize.size16,
                fontWeight: FontWeight.w500,
                color: Color(0xff008070),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: AppColors.lineColorC8,
          ),
        ],
      ),
    );
  }
}
