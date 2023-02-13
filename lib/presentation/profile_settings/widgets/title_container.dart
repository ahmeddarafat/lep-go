import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

import '../../resources/widgets/public_product_card.dart';
import '../../resources/constants/app_strings.dart';
import '../../resources/widgets/public_back_arrow.dart';



class TitleContainer extends StatelessWidget {
  final String title;
  const TitleContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.getWidth(8).w, vertical: AppSize.getHeight(4).h),
      decoration: const BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: PublicText(
        txt: title,
        color: AppColors.grey3b,
        size: 14.sp,
      ),
    );
  }
}
