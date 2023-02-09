import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/apis_demo.dart';
import '../../../resources/constants/app_size.dart';
import '../../../resources/styles/app_colors.dart';

class CategoryContainer extends StatelessWidget {
  final int index;
  const CategoryContainer({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.offWhite2,
          radius: AppSize.getWidth(30).w,
          child: SvgPicture.asset(imagesOFCategories[index]),
        ),
        const SizedBox(height: 4),
        Text(
          titleOfCategories[index],
          style: Theme.of(context).textTheme.labelMedium,
        )
      ],
    );
  }
}