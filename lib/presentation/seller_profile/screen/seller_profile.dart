import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/constants/app_assets.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_back_arrow.dart';
import 'package:lep_go/presentation/resources/widgets/public_button.dart';
import 'package:sizer/sizer.dart';

import '../../resources/widgets/public_text.dart';
import '../../resources/widgets/public_products_cards.dart';

class SellerProfile extends StatelessWidget {
  const SellerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const PublicBackArrow(),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.getWidth(24).w,
          vertical: AppSize.getHeight(22).h,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: AppSize.getWidth(85).w,
              backgroundImage: const AssetImage(AppAssets.seller),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pin_drop,
                  size: 10.sp,
                  color: AppColors.grey3b,
                ),
                PublicText(
                  txt: sellerDemo.place,
                  color: AppColors.orange,
                  size: 10.sp,
                ),
              ],
            ),
            SizedBox(
              height: AppSize.getHeight(4).h,
            ),
            PublicText(
              txt: sellerDemo.name,
              color: AppColors.black,
              size: 22.sp,
              fw: FontWeight.bold,
            ),
            SizedBox(
              height: AppSize.getHeight(13).h,
            ),
            PublicButton(
              title: "Contact Me",
              onPressed: () {
                // todo : navigate to chat
              },
              width: AppSize.getWidth(136).w,
              borderRadius: 6,
              useTitleWidget: true,
              titleWidget: PublicText(
                txt: "Contact Me",
                color: AppColors.white,
                size: 11.sp,
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(19).h,
            ),
            PublicText(
              txt: "Products",
              color: AppColors.black,
              size: 14.sp,
              fw: FontWeight.bold,
            ),
            SizedBox(
              height: AppSize.getHeight(16).h,
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: ProductsCards(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
