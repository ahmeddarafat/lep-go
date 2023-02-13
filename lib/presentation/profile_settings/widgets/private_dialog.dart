import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../resources/constants/app_size.dart';
import '../../resources/constants/app_strings.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/widgets/Public_text.dart';
import '../../resources/widgets/public_button.dart';
import '../../resources/widgets/public_text_form_field.dart';
import 'title_container.dart';

class PrivateDialog extends StatefulWidget {
  const PrivateDialog({
    super.key,
  });

  @override
  State<PrivateDialog> createState() => _PrivateDialogState();
}

class _PrivateDialogState extends State<PrivateDialog> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: AppSize.getHeight(366).h,
            padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(25).w),
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSize.getHeight(55).h),
                PublicText(
                  txt: AppString.nameHint,
                  color: AppColors.black,
                  size: 16.sp,
                ),
                SizedBox(
                  height: AppSize.getHeight(36).h,
                  child: PublicTextFormField(
                    hint: AppString.writeHere,
                    controller: _nameController,
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "please, Enter your name";
                      }
                      return null;
                    },
                    borderRadius: 6,
                    borderColor: AppColors.graydd,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSize.getWidth(13).w,
                      vertical: AppSize.getHeight(9).h,
                    ),
                  ),
                ),
                SizedBox(height: AppSize.getHeight(16).h),
                PublicText(
                  txt: AppString.email,
                  color: AppColors.black,
                  size: 16.sp,
                ),
                SizedBox(
                  height: AppSize.getHeight(36).h,
                  child: PublicTextFormField(
                    hint: AppString.writeHere,
                    controller: _emailController,
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "please, Enter your email";
                      }
                      return null;
                    },
                    borderRadius: 6,
                    borderColor: AppColors.graydd,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSize.getWidth(13).w,
                      vertical: AppSize.getHeight(9).h,
                    ),
                  ),
                ),
                SizedBox(height: AppSize.getHeight(16).h),
                PublicText(
                  txt: AppString.phone,
                  color: AppColors.black,
                  size: 16.sp,
                ),
                SizedBox(
                  height: AppSize.getHeight(36).h,
                  child: PublicTextFormField(
                    hint: AppString.writeHere,
                    controller: _phoneController,
                    validator: (phone) {
                      if (phone!.isEmpty) {
                        return "please, Enter your phone";
                      }
                      return null;
                    },
                    borderRadius: 6,
                    borderColor: AppColors.graydd,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSize.getWidth(15).w,
                      vertical: AppSize.getHeight(7).h,
                    ),
                  ),
                ),
                SizedBox(height: AppSize.getHeight(18).h),
                Center(
                  child: PublicButton(
                    useTitleWidget: true,
                    titleWidget: PublicText(
                      txt: AppString.change,
                      color: AppColors.white,
                      size: 12.sp,
                    ),
                    borderRadius: 8,
                    width: AppSize.getWidth(130).w,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          const TitleContainer(title: AppString.personalData)
        ],
      ),
    );
  }
}
