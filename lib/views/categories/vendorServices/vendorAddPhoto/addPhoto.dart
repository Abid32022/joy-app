import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:joyapp/utils/appcolors.dart';
import 'package:joyapp/utils/appconstant.dart';
import 'package:joyapp/utils/mysize.dart';
import 'package:joyapp/views/base/custom_textwidget.dart';

import '../../../base/custom_app_bar.dart';

class AddPhotoPage extends StatefulWidget {
  @override
  State<AddPhotoPage> createState() => _AddPhotoPageState();
}
class _AddPhotoPageState extends State<AddPhotoPage> {
  ImagePicker imagePicker = ImagePicker();
  File? _selectedImage;
  List<File> images = [];

  Future _pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
      images.add(_selectedImage!);

    });
    // Navigator.push(context, MaterialPageRoute(builder: (context) =>
    //     ItemsImagesPage(img: images),
    //   ),
    // );
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        onBackTap: () {
          Get.back();
        },
        verifiedVisibile: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size20,
              ),
              GestureDetector(
                onTap: (){
                  // Get.to(ItemsImagesPage());
                },
                child: customTextBold(
                    title: "Add some photo of your location",
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MySize.size16,
              ),
              customTextRegular(
                title:
                    "You'll need 5 photos to get started. You can add more or make changes later.",
                fontSize: 16,
              ),
              SizedBox(
                height: MySize.size19,
              ),
              GestureDetector(
                onTap: () {
                  _pickImageFromGallery();

                },
                child: Container(
                  padding: EdgeInsets.only(top: 28, bottom: 28, left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0.5,
                        color: AppColors.borderColorAD,
                      )),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppConstant.ic_add),
                      SizedBox(
                        width: MySize.size22,
                      ),
                      customTextBold(
                          title: "Add Photos", fontSize: MySize.size16),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              GestureDetector(
                onTap: () {
                  _pickImageFromCamera();
                },
                child: Container(
                  padding: EdgeInsets.only(top: 28, bottom: 28, left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0.5,
                        color: AppColors.borderColorAD,
                      )),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppConstant.ic_add),
                      SizedBox(
                        width: MySize.size22,
                      ),
                      customTextBold(
                          title: "Add Take new photos",
                          fontSize: MySize.size16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
