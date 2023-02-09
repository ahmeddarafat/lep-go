import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../domain/models/seller_model.dart';
import '../../../resources/constants/app_size.dart';
import '../../../resources/styles/app_colors.dart';
import '../../../resources/styles/app_style.dart';

class SellerDetails extends StatelessWidget {
  const SellerDetails({
    super.key,
    required this.seller,
  });

  final SellerModel seller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: AppSize.getWidth(30).w,
          backgroundImage: AssetImage(
            seller.image,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          width: 60.w,
          padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: AppColors.orange),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Name:',
                    style: AppStyle.bodySubTitle,
                  ),
                  SizedBox(width: AppSize.getWidth(16).w),
                  Text(
                    seller.name,
                    style: AppStyle.bodySubTitle,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'Place:',
                    style: AppStyle.bodySubTitle,
                  ),
                  SizedBox(width: AppSize.getWidth(16).w),
                  Text(
                    seller.place,
                    style: AppStyle.bodySubTitle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
