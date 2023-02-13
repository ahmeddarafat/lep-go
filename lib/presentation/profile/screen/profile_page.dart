import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:lep_go/presentation/resources/switchers/app_router.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

import '../../resources/constants/app_assets.dart';
import '../../resources/constants/app_size.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/widgets/public_back_arrow.dart';
import '../widgets/profile_image.dart';
import '../widgets/profile_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const PublicBackArrow(),
        title: PublicText(
          txt: AppString.profile,
          size: 20.sp,
          color: AppColors.black,
          fw: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.getWidth(32).w,
        ),
        child: Center(
          child: Column(
            children: [
              const ProfileImage(),
              SizedBox(
                height: AppSize.getHeight(32).h,
              ),
              ProfileTile(
                icon: Icons.person,
                title: AppString.profileSetting,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.profileSettings);
                },
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                icon: Icons.discount,
                title: AppString.offers,
                onTap: () {},
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                icon: Icons.favorite,
                title: AppString.favorites,
                onTap: () {},
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                icon: Icons.file_present,
                title: AppString.usagePolicy,
                onTap: () {},
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                icon: Icons.settings,
                title: AppString.settings,
                onTap: () {},
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                icon: Icons.announcement_outlined,
                title: AppString.about,
                onTap: () {},
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                icon: Icons.phone,
                title: AppString.contactUs,
                onTap: () {},
              ),
              SizedBox(height: AppSize.getHeight(10).h),
              ProfileTile(
                title: AppString.logout,
                icon: Icons.logout,
                color: AppColors.red,
                forwardArrow: false,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
