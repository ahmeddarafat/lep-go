// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:sizer/sizer.dart';

import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_style.dart';


class ProductLabelsColumn extends StatelessWidget {
  const ProductLabelsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.productName,
          style: AppStyle.bodyTitle,
        ),
        SizedBox(height: AppSize.getHeight(8).h),
        Text(
          AppString.price,
          style: AppStyle.bodyTitle,
        ),
        SizedBox(height: AppSize.getHeight(8).h),
        Text(
          AppString.place,
          style: AppStyle.bodyTitle,
        ),
        SizedBox(height: AppSize.getHeight(8).h),
        Text(
          AppString.description,
          style: AppStyle.bodyTitle,
        ),
        SizedBox(height: AppSize.getHeight(83).h),
        Text(
          AppString.condition,
          style: AppStyle.bodyTitle,
        ),
      ],
    );
  }
}