import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/styles/app_colors.dart';
import '../../../resources/styles/app_fonts.dart';
import '../../../resources/switchers/app_router.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/constants/app_assets.dart';
import '../../../resources/constants/app_size.dart';
import '../../../resources/constants/app_strings.dart';
import '../../../resources/widgets/public_headline_row.dart';
import '../../../resources/widgets/public_products_cards.dart';
import '../../../resources/widgets/public_text_form_field.dart';
import '../widgets/row_categories.dart';
import '../widgets/row_offers_cards.dart';

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
  void dispose() {
    _searchContorller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(16).w),
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: AppSize.getWidth(80).w,
          title: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: AppFontSize.f32),
              children: [
                TextSpan(
                    text: "Lep", style: TextStyle(color: AppColors.blackBlue)),
                TextSpan(text: "Go", style: TextStyle(color: AppColors.orange)),
              ],
            ),
          ),
          leadingWidth: AppSize.getWidth(30).w,
          leading: SvgPicture.asset(AppAssets.groups),
          actions:  [
            InkWell(
              onTap: ()=>Navigator.pushNamed(context,AppRoutes.home),
              child: const CircleAvatar(
                backgroundImage: AssetImage(AppAssets.seller),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSize.getHeight(8).h),
              PublicTextFormField(
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
              const RowCategories(),
              SizedBox(height: AppSize.getHeight(8).h),
              HeadLineRow(
                title: AppString.offers,
                onTap: () => Navigator.pushNamed(context, AppRoutes.offers),
              ),
              const RowOffersCards(),
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
      ),
    );
  }
}
