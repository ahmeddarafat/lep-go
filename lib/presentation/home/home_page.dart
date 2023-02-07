import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/switchers/app_router.dart';
import 'package:sizer/sizer.dart';

import '../resources/constants/app_assets.dart';
import '../resources/constants/app_size.dart';
import '../resources/constants/app_strings.dart';
import '../resources/styles/app_colors.dart';
import '../resources/widgets/public_offer_card.dart';
import '../resources/widgets/public_text_form_field.dart';
import 'components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
  ];
  late TextEditingController _searchContorller;

  @override
  void initState() {
    super.initState();
    _searchContorller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(16).w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSize.getHeight(8).h,
            ),
            DefaultTextFormField(
              hint: AppString.search,
              showprefixIcon: true,
              prefixIcon: Icons.search,
              borderRadius: 12.0,
              controller: _searchContorller,
              validator: (_) => null,
            ),
            SizedBox(height: AppSize.getHeight(8).h),
            HeadLineRow(
              title: AppString.types,
              onTap: () => Navigator.pushNamed(context, AppRoutes.categories),
            ),
            SizedBox(height: AppSize.getHeight(8).h),
            SizedBox(
              height: AppSize.getHeight(86).h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: titleOfCategories.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(context, AppRoutes.products),
                    child: Column(
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
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return const SizedBox(width: 10);
                }),
              ),
            ),
            SizedBox(height: AppSize.getHeight(8).h),
            HeadLineRow(
              title: AppString.offers,
              onTap: () => Navigator.pushNamed(context, AppRoutes.offers),
            ),
            const RowOfOffers(),
            SizedBox(height: AppSize.getHeight(8).h),
            const HeadLineRow(
              title: AppString.suggestionForYou,
              showAllWord: false,
            ),
            SizedBox(height: AppSize.getHeight(8).h),
            const ProductsCards(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchContorller.dispose();
    super.dispose();
  }
}

