import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

import '../../resources/constants/app_assets.dart';
import '../../resources/constants/app_size.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/widgets/public_back_arrow.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({
    super.key,
  });

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? image;
  final imagePicker = ImagePicker();

  Future<void> pickImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: AppSize.getWidth(85).w,
          backgroundImage: const AssetImage(AppAssets.seller),
        ),
        Positioned(
          right: AppSize.getWidth(8).w,
          bottom: AppSize.getWidth(8).h,
          width: AppSize.getWidth(30).w,
          height: AppSize.getWidth(30).w,
          child: FittedBox(
            child: FloatingActionButton.small(
              backgroundColor: AppColors.orange,
              onPressed: () async {
                await pickImage();
              },
              child: const Icon(
                Icons.add,
                color: AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
