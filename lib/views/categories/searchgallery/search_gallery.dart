import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/appointment_app_bar.dart';
import 'package:joyapp/views/base/textfield.dart';

import '../../../utils/mysize.dart';
import '../../launchpadscreen/launchpad_screen.dart';


class SearchGallery extends StatefulWidget {
  const SearchGallery({super.key});

  @override
  State<SearchGallery> createState() => _SearchGalleryState();
}

class _SearchGalleryState extends State<SearchGallery> {

  List imageList = [
    AppConstant.search_img1,
    AppConstant.search_img2,
    AppConstant.search_img3,
    AppConstant.search_img4,
    AppConstant.search_img5,
    AppConstant.search_img6,
    AppConstant.search_img7,
    AppConstant.search_img8,
    AppConstant.search_img9,
    AppConstant.search_img10,
    AppConstant.search_img11,
    AppConstant.search_img12,
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGroundColorFA,
        appBar: AppointmentAppBar(
          verifiedVisibile: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.size24,vertical: MySize.size15),
            child: Column(children: [
              Row(children: [
                Expanded(
                  child: customTextField(
                    hintText: "Search",
                    hinttextcolor: AppColors.placeHolderColor4F,
                    prefixImage: Padding(
                      padding:  EdgeInsets.all(MySize.size15),
                      child: SvgPicture.asset(AppConstant.ic_search,),
                    ),
                    fillcolor: Color(0xFFECF6FA),
                    filled: true,
                    bordercolor: Color(0xFFC0D4DC)
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(LaunchedPadScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: MySize.size10,horizontal: MySize.size10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size8),
                      border: Border.all(color: Color(0xFFC0D4DC)),
                      color: Color(0xFFECF6FA),
                    ),
                    child: SvgPicture.asset(AppConstant.ic_setting),
                  ),
                ),
              ],),
              SizedBox(
                height: MySize.size14,
              ),
              MasonryGridView.builder(
                shrinkWrap: true,
                itemCount: imageList.length,
                mainAxisSpacing: MySize.size10,
                crossAxisSpacing: MySize.size10,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ), itemBuilder: (context, index) {
                return Image(image: AssetImage(imageList[index]),);
              },)
            ]),
          ),
        ),
      ),
    );
  }
}
