import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/views/base/custom_divider.dart';

import '../../../../utils/mysize.dart';
import '../../../base/custom_app_bar.dart';
import '../../../base/custom_textwidget.dart';
import '../listing/listing.dart';

class DLSVendorService extends StatefulWidget {
  const DLSVendorService({super.key});

  @override
  State<DLSVendorService> createState() => _DLSVendorServiceState();
}

class _DLSVendorServiceState extends State<DLSVendorService> {

  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Order Placed",
          textStyle: TextStyle(fontSize: 16),
        ),
        subtitle: StepperText("Your order has been received",textStyle: TextStyle(fontSize: 16)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          // child: const Icon(Icons.looks_one, color: Colors.white),
        )),
    StepperData(
        title: StepperText("[Vendor Name] is preparing your order",textStyle: TextStyle(fontSize: 16)),
        subtitle: StepperText("15min - 25min",textStyle: TextStyle(fontSize: 16)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),

        )),
    StepperData(
        title: StepperText("Order Ready",textStyle: const TextStyle(
          color: Colors.grey,fontSize: 16
        )),
        // iconWidget: Container(
        //   padding: const EdgeInsets.all(8),
        //   decoration: const BoxDecoration(
        //       color: Colors.green,
        //       borderRadius: BorderRadius.all(Radius.circular(30))),
        //   // child: const Icon(Icons.looks_3, color: Colors.white),
        // )),
),
    StepperData(
      title: StepperText("[User name] moving for picked up order",
          textStyle: TextStyle(color: Colors.grey,fontSize: 16)
      ),
    ),
    StepperData(
      title: StepperText("[User name] has pick up order!",
          textStyle: TextStyle(color: Colors.grey,fontSize: 16)),
    ),
  ];



  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: (){
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size17,
              ),
              Center(
                  child: customTextMedium(
                      title: "Invoice No. 30WT43GD54", fontSize: 18)),
              SizedBox(
                height: MySize.size10,
              ),
              Center(
                  child: customTextRegular(
                      title:
                      "Curabitur sit amet massanunc. Fusce at tristique ")),
              SizedBox(
                height: MySize.size6,
              ),
              Center(
                  child: customTextRegular(
                      title: "magna. Fusce eget dapibus dui.")),
              SizedBox(
                height: MySize.size20,
              ),
              Container(
                height: MySize.scaleFactorHeight * 244,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Center(
                  child: customTextMedium(title: "Map"),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: MySize.size17,left: MySize.size17),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 0.2,
                        color: AppColors.borderColorAD
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MySize.size17,),
                    Wrap(
                      children: List.generate(5, (index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Container(
                          height: MySize.size10,
                          width: MySize.size10,
                          decoration: BoxDecoration(
                            color: Colors.green
                          ),
                        ),
                      )),
                    ),

                    SizedBox(height: MySize.size17,),
                    GestureDetector(
                        onTap: (){
                          Get.to(Listing());
                        },
                        child: customTextMedium(title: "YOUR ORDER WILL READY FOR PICK ""UP",fontSize: 12)),
                    SizedBox(height: MySize.size10,),
                    GestureDetector(
                        onTap: (){
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              clipBehavior: Clip.none,

                              context: context,
                              builder: (context) {
                                return bottomModel();
                              }
                          );
                        },

                        child: customTextMedium(title: "30 - 45 min",fontSize: MySize.size26)),
                    SizedBox(height: MySize.size32,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnotherStepper(
                          stepperList: stepperData,
                          stepperDirection: Axis.vertical,
                          iconWidth: 20,
                          iconHeight: 20,
                          activeBarColor: Colors.green,
                          inActiveBarColor: Colors.grey,
                          verticalGap: MySize.size44,
                          activeIndex: 1,
                          barThickness: 1,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: MySize.size20,),
              // Container(
              //   padding: EdgeInsets.zero,
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Column(
              //         children: [
              //           CircleAvatar(
              //             radius: 10,
              //             backgroundColor: AppColors.primaryColor62,
              //           ),
              //           SizedBox(
              //             height: MySize.size60,
              //             child: customDivider(
              //               width: 1,
              //                 color: AppColors.lineColorE4
              //             ),
              //           ),CircleAvatar(
              //             radius: 10,
              //             backgroundColor: AppColors.primaryColor62,
              //           ),
              //           SizedBox(
              //             height: MySize.size60,
              //             child: customDivider(
              //               width: 1,
              //                 color: AppColors.lineColorE4
              //             ),
              //           ),CircleAvatar(
              //             radius: 10,
              //             backgroundColor: AppColors.primaryColor62,
              //           ),
              //           SizedBox(
              //             height: MySize.size60,
              //             child: customDivider(
              //               width: 1,
              //                 color: AppColors.lineColorE4
              //             ),
              //           ),CircleAvatar(
              //             radius: 10,
              //             backgroundColor: AppColors.primaryColor62,
              //           ),
              //           SizedBox(
              //             height: MySize.size60,
              //             child: customDivider(
              //               width: 1,
              //                 color: AppColors.lineColorE4
              //             ),
              //           ),CircleAvatar(
              //             radius: 10,
              //             backgroundColor: AppColors.primaryColor62,
              //           ),
              //
              //         ],
              //       ),
              //       SizedBox(width: MySize.size16,),
              //       Column(
              //         children: [
              //           customTextMedium(title: "Your order has been received")
              //         ],
              //       )
              //     ],
              //   ),
              // )







            ],
          ),
        ),
      ),
    );
  }
}
Widget bottomModel() =>
    Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.whiteColorFF,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                topRight: Radius.circular(10)),
          ),
          height: 180,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MySize.size35,),
                Center(
                  child: customTextMedium(
                      title: "Seoul Food", fontSize: MySize.size20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: MySize.size7,),
                Center(child: customTextRegular(title: "Invoice No. 30WT43GD54")),
                SizedBox(height: MySize.size8,),
                Center(
                  child: Text.rich(TextSpan(text: "Pickup by: ",style: TextStyle(fontFamily:
                  "EnnVisions",fontSize: MySize.size16),
                      children: [
                    TextSpan(text: "3:22 PM",style: TextStyle(color: AppColors.primaryColor62))
                  ])),
                ),
                SizedBox(height: MySize.size20,),
                customDivider(
                  width: double.infinity,
                  color: AppColors.borderColorAD,
                ),
                SizedBox(height: MySize.size10,),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: customTextMedium(title: "Order Details:",),
                ),
                SizedBox(height: MySize.size18,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: Row(
                    children: [
                      customTextRegular(title: "Pick Up 4 items"),
                      Spacer(),
                      Text.rich(TextSpan(text: "Subtotal: ",style: TextStyle
                        (fontFamily:
                      "EnnVisionsMedium",fontSize: MySize.size16,fontWeight: FontWeight
                          .w500),
                          children: [
                            TextSpan(text: "\$33.75",style: TextStyle(color:
                            AppColors.primaryColor62,fontFamily: "Envisions"))
                          ]))
                    ],
                  ),
                )




              ],
            ),
          ),

        ),
        Positioned(
            top: MySize.size25,
            right: MySize.size30,
            child: SvgPicture.asset(AppConstant.ic_direction_green,))
      ],
    );
