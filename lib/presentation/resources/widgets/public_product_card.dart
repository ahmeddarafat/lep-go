import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:sizer/sizer.dart';

import '../styles/app_colors.dart';
import 'public_text.dart';

class PublicProductCard extends StatelessWidget {
  final bool showFavorite;
  final Color backgroundColor;
  const PublicProductCard({
    super.key,
    this.showFavorite = true,
    this.backgroundColor = AppColors.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.getWidth(8).w),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: AppSize.getWidth(110).w,
                height: AppSize.getHeight(130).h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Image.asset(
                  productDetails.images[0],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: AppSize.getWidth(12).w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PublicText(
                  txt: productDetails.name,
                  color: AppColors.black,
                  size: 18.sp,
                  fw: FontWeight.bold,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      size: 14.sp,
                      color: AppColors.gray66,
                    ),
                    PublicText(
                      txt: productDetails.place,
                      color: AppColors.gray66,
                      size: 12.sp,
                    )
                  ],
                ),
                Row(children: [
                  for (int i = 0; i < productDetails.rate; i++)
                    Icon(
                      Icons.star,
                      color: const Color(0XffFFA841),
                      size: 14.sp,
                    )
                ]),
                SizedBox(
                  width: AppSize.getWidth(118).w,
                  child: PublicText(
                    txt: productDetails.description,
                    color: AppColors.gray66,
                    size: 12.sp,
                    align: TextAlign.start,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.red,
                      size: 13.sp,
                    ),
                    PublicText(
                      txt: productDetails.price.toString(),
                      color: AppColors.black,
                      size: 12.sp,
                    ),
                    PublicText(
                      txt: AppString.forDay,
                      color: AppColors.orange,
                      size: 12.sp,
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            showFavorite
                ? const Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
