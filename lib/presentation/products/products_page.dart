import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../resources/constants/app_size.dart';
import '../resources/constants/app_strings.dart';
import '../resources/widgets/back_arrow.dart';
import '../resources/widgets/public_headline_row.dart';
import '../resources/widgets/public_products_cards.dart';
import '../resources/widgets/public_text_form_field.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late TextEditingController _searchController;
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const PublicBackArrow(),
          title: Text(
            AppString.products,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.getWidth(16).w, vertical: AppSize.getHeight(8).h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                  controller: _searchController,
                  validator: (_) => null,
                ),
                SizedBox(
                  height: AppSize.getHeight(8).h,
                ),
                const HeadLineRow(
                  title: "Cars",
                  showAllWord: false,
                ),
                SizedBox(
                  height: AppSize.getHeight(8).h,
                ),
                const ProductsCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
