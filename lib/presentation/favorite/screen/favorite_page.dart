import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:sizer/sizer.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_style.dart';
import '../widgets/favorite_product_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Favorite",
          style: AppStyle.headline,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(10).w),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (_, index) {
            return const FavoriteProductCard();
          },
          separatorBuilder: (_, index) {
            return SizedBox(
              height: AppSize.getHeight(20).h,
            );
          },
        ),
      ),
    );
  }
}
