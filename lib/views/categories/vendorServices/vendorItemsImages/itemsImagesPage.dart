// import 'dart:io';
//
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:joyapp/utils/appcolors.dart';
// import 'package:joyapp/utils/appconstant.dart';
// import 'package:joyapp/utils/mysize.dart';
// import 'package:joyapp/views/base/custom_divider.dart';
// import 'package:joyapp/views/base/custom_textwidget.dart';
//
// import 'package:multi_image_picker/multi_image_picker.dart';
//
// class ItemsImagesPage extends StatefulWidget {
//   const ItemsImagesPage({super.key});
//   @override
//   State<ItemsImagesPage> createState() => _ItemsImagesPageState();
// }
// class _ItemsImagesPageState extends State<ItemsImagesPage> {
//   ImagePicker imagePicker = ImagePicker();
//   File? _selectedImage;
//   List<File> images = [];
//
//     @override
//     Widget build(BuildContext context) {
//       MySize().init(context);
//       return Scaffold(
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: MySize.size22,
//                   ),
//                   customTextMedium(
//                       title: "Choose at least 5 photos",
//                       fontSize: MySize.size18,
//                       fontWeight: FontWeight.w500),
//                   SizedBox(
//                     height: MySize.size16,
//                   ),
//                   customTextRegular(
//                     title: "Drag to reorder",
//                     fontSize: MySize.size16,
//                   ),
//                   SizedBox(
//                     height: MySize.size16,
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         height: MySize.scaleFactorHeight * 268,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(MySize.size10),
//                         ),
//                         child: ClipRRect(
//                             borderRadius: BorderRadius.circular(MySize.size10),
//                             child: Image.asset(
//                               AppConstant.rectangle_7073,
//                               fit: BoxFit.fill,
//                             )),
//                       ),
//                       Positioned(
//                         left: MySize.size10,
//                         top: MySize.size10,
//                         child: Container(
//                           padding: EdgeInsets.all(MySize.size10),
//                           decoration: BoxDecoration(
//                               color: AppColors.whiteColorFF,
//                               borderRadius: BorderRadius.circular(MySize
//                                   .size5)),
//                           child: customTextRegular(title: "Cover Photo"),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: MySize.size20,
//                   ),
//                   GridView.builder(
//                     itemCount: 2,
//                     shrinkWrap: true,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: MySize.size20,
//                         mainAxisSpacing: MySize.size24,
//                         mainAxisExtent: MySize.scaleFactorHeight * 125
//                     ),
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _pickImageFromGallery();
//                           });
//                         },
//                         child: ClipRRect(
//                             borderRadius: BorderRadius.circular(7),
//                             child: Image.file(_selectedImage!, fit: BoxFit
//                                 .cover, width: double.infinity,)
//                         ),
//                       );
//                     },
//                   ),
//
//                   GestureDetector(
//
//                     onTap: () async {
//                       _pickImageFromGallery();
//                     },
//
//                     child: DottedBorder(
//                       dashPattern: [5, 5, 5, 5],
//                       strokeWidth: 2,
//                       color: AppColors.borderColorAD,
//                       child: Center(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SvgPicture.asset(AppConstant.ic_add),
//                             SizedBox(height: MySize.size19,),
//                             Text("Add Photo"),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           bottomSheet: Container(
//             color: AppColors.whiteColorFF,
//             height: 70,
//             // color: Colors.red,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 children: [
//                   customDivider(
//                       color: AppColors.lineColorAD,
//                       width: double.infinity
//                   ),
//                   SizedBox(height: MySize.size10,),
//                   Row(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(15),
//                         decoration: BoxDecoration(
//                           color: AppColors.lineColorC8,
//                           borderRadius: BorderRadius.circular(10),
//
//                         ),
//                         child: SvgPicture.asset(AppConstant.ic_back),
//                       ),
//                       SizedBox(width: MySize.size14,),
//                       Container(
//                           padding: EdgeInsets.all(15),
//                           decoration: BoxDecoration(
//                             color: AppColors.parcelPrimaryColor5C,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Row(
//                             children: [
//                               SizedBox(width: MediaQuery
//                                   .of(context)
//                                   .size
//                                   .width *
//                                   0.21,),
//                               customTextBold(title: "CONTINUE", color: AppColors
//                                   .whiteColorFF,),
//                               SizedBox(width: MediaQuery
//                                   .of(context)
//                                   .size
//                                   .width *
//                                   0.2,),
//                               SvgPicture.asset(AppConstant.ic_forward,
//                                 color: AppColors.whiteColorFF,)
//                             ],
//                           )
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//       );
//     }
//   Future _pickImageFromGallery() async {
//     final returnedImage = await MultiImagePicker.pickImages(maxImages: 5);
//
//     if (returnedImage == null) return;
//     setState(() {
//       // _selectedImage = File(returnedIm);
//       images.add(_selectedImage!);
//
//     });
//     // Navigator.push(context, MaterialPageRoute(builder: (context) =>
//     //     ItemsImagesPage(img: images),
//     //   ),
//     // );
//   }
//   }
