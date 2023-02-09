import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/apis_demo.dart';
import '../../../resources/constants/app_size.dart';
import '../../../resources/widgets/public_offer_card.dart';

class RowOffersCards extends StatelessWidget {
  const RowOffersCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(170).h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: offersImg.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // todo: navigate to page of offer
            },
            child: PublicOfferCard(
              index: index,
            ),
          );
        },
        separatorBuilder: ((context, index) {
          return const SizedBox(width: 10);
        }),
      ),
    );
  }
}


