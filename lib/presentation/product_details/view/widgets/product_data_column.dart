import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../domain/models/product_details_model.dart';
import '../../../resources/constants/app_size.dart';
import '../../../resources/constants/app_strings.dart';
import '../../../resources/styles/app_colors.dart';
import '../../../resources/styles/app_style.dart';
import 'text_container.dart';

class ProductDataColumn extends StatelessWidget {
  const ProductDataColumn({
    super.key,
    required this.product,
  });

  final ProductDetailsModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 4,
        ),
        Text(
          product.name,
          style: AppStyle.bodySubTitle,
        ),
        SizedBox(height: AppSize.getHeight(10).h),
        RichText(
          text:
              TextSpan(style: AppStyle.bodySubTitle, children: [
            TextSpan(
                text: product.price.toString(),
                style:
                    const TextStyle(color: AppColors.orange)),
            const TextSpan(text: AppString.forDay),
          ]),
        ),
        SizedBox(height: AppSize.getHeight(10).h),
        Text(
          product.place,
          style: AppStyle.bodySubTitle,
        ),
        SizedBox(height: AppSize.getHeight(16).h),
        TextContainer(text: product.description),
        SizedBox(height: AppSize.getHeight(26).h),
        TextContainer(text: product.conditions)
      ],
    );
  }
}