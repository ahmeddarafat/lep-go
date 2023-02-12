import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:sizer/sizer.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/widgets/app_text.dart';

class FavoriteProductCard extends StatelessWidget {
  const FavoriteProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.getWidth(8).w),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: AppSize.getWidth(100).w,
                height: AppSize.getHeight(100).h,
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
                AppText(
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
                      color: AppColors.lightGray,
                    ),
                    AppText(
                      txt: productDetails.place,
                      color: AppColors.lightGray,
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
                  child: AppText(
                    txt: productDetails.description,
                    color: AppColors.lightGray,
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
                    AppText(
                      txt: productDetails.price.toString(),
                      color: AppColors.black,
                      size: 12.sp,
                    ),
                    AppText(
                      txt: AppString.forDay,
                      color: AppColors.orange,
                      size: 12.sp,
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
