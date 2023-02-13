import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

class NotificationTile extends StatelessWidget {
  final String title;
  final String body;
  final bool seen;
  const NotificationTile({
    super.key,
    required this.title,
    required this.body,
    this.seen = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppSize.getHeight(12).h,
        horizontal: AppSize.getWidth(26).w,
      ),
      color: seen ? AppColors.white : const Color(0xffFCF8F3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PublicText(
            txt: title,
            color: AppColors.black,
            size: 12.sp,
            fw: FontWeight.bold,
            max: 1,
          ),
          SizedBox(
            width: AppSize.getWidth(220).w,
            child: PublicText(
              txt: body,
              color: AppColors.gray66,
              size: 10.sp,
              max: 1,
            ),
          ),
        ],
      ),
    );
  }
}
