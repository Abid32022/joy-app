
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/appcolors.dart';
import '../../../utils/appconstant.dart';
import '../../../utils/mysize.dart';
import '../../base/custom_textwidget.dart';



class PageViewContainer extends StatefulWidget {
  @override
  State<PageViewContainer> createState() => _PageViewContainerState();
}

class _PageViewContainerState extends State<PageViewContainer> {
  CarouselController _carouselController = CarouselController();

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width ,
            child: CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: 4,
              itemBuilder: (context, index, index2) {
                return Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.only(top: MySize.size17,bottom: MySize.size14,left: MySize.size20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MySize.size10),
                      border: Border.all(color: AppColors.borderColorAD)),
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AppConstant.KFC_img),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextMedium(
                            title: "10-40% OFF",
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500),
                        customTextLight(
                            title: "Flat Discounts on Every Purchase!",
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        SizedBox(height: MySize.scaleFactorHeight * 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.size10,
                                  vertical: MySize.size6),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(MySize.size20),
                                color: Color(0xFFFBF6B5),
                              ),
                              child: Row(children: [
                                Icon(
                                  Icons.star,
                                  size: MySize.size15,
                                  color: Colors.orange,
                                ),
                                customTextMedium(
                                    title: "4.5",
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w500),
                              ]),
                            ),
                            SizedBox(
                              width: MySize.size15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.size10,
                                  vertical: MySize.size6),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(MySize.size20),
                                color: Color(0xFFD6FAFD),
                              ),
                              child: customTextMedium(
                                title: "Food",
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF40AFB8),
                              ),
                            ),
                            SizedBox(
                              width: MySize.size15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: MySize.size10,
                                  vertical: MySize.size6),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(MySize.size20),
                                color: Color(0xFFFAE8FB),
                              ),
                              child: customTextMedium(
                                title: "15 Days",
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFC054C6),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
                );
              },
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,

                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: MySize.size10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 12.0,
                height: 4.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: index == activeIndex ? AppColors.parcelSecondaryColor8B: Colors.grey,
                ),
              );
            }),
          ),
        ],
        );
  }
}