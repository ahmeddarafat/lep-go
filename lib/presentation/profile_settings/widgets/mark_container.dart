import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

import '../../resources/widgets/public_product_card.dart';
import '../../resources/constants/app_strings.dart';
import '../../resources/widgets/public_back_arrow.dart';

class MarkContainer extends StatelessWidget {
  final IconData icon;
  final Color color;
  const MarkContainer({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.getWidth(8).w,
        vertical: AppSize.getHeight(4).h,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Icon(
        icon,
        color: AppColors.white,
        size: 16.sp,
      ),
    );
  }
}