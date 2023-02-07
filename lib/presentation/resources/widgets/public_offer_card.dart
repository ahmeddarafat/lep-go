
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../app/apis_demo.dart';
import '../constants/app_size.dart';
import '../constants/app_strings.dart';

class DefaultOfferCard extends StatelessWidget {
  final int index;
  const DefaultOfferCard({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 45.w,
          height: AppSize.getHeight(100).h,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16)),
          child: Image.asset(
            offersImg[index],
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          offersTitles[index],
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 4),
        Text(
          AppString.offer30,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
