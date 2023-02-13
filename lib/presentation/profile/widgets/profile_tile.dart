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
class ProfileTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;
  final bool forwardArrow;
  final void Function()? onTap;
  const ProfileTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.color,
    this.forwardArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.getWidth(26).w,
            vertical: AppSize.getHeight(16).h),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 15.sp,
              color: color,
            ),
            SizedBox(
              width: AppSize.getWidth(18).w,
            ),
            PublicText(
              txt: title,
              color: color ?? AppColors.black,
              size: 14.sp,
              fw: FontWeight.bold,
            ),
            const Spacer(),
            forwardArrow
                ? Icon(
                    Icons.arrow_forward_ios,
                    size: 15.sp,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
