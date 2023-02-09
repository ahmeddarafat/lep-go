// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/domain/models/product_details_model.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/styles/app_style.dart';
import 'package:lep_go/presentation/resources/widgets/public_button.dart';
import 'package:sizer/sizer.dart';

import '../../../../domain/models/seller_model.dart';
import '../../../resources/widgets/back_arrow.dart';
import '../widgets/image_slider.dart';
import '../widgets/product_data_column.dart';
import '../widgets/product_label_column.dart';
import '../widgets/seller_details.dart';

class ProductDetails extends StatelessWidget {
  final ProductDetailsModel product;
  final SellerModel seller;
  const ProductDetails({
    Key? key,
    this.product = productDetails,
    this.seller = sellerDemo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: const PublicBackArrow(),
          title: Text(
            "Details",
            style: AppStyle.headline,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(20).w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    product.name,
                    style: AppStyle.title,
                  ),
                ),
                SizedBox(height: AppSize.getHeight(9).h),
                ImageSlider(product: product),
                SizedBox(height: AppSize.getHeight(25).h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppString.details,
                    style: AppStyle.headline,
                  ),
                ),
                SizedBox(height: AppSize.getHeight(16).h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductLabelsColumn(),
                    SizedBox(
                      width: AppSize.getWidth(33).w,
                    ),
                    ProductDataColumn(product: product),
                  ],
                ),
                SizedBox(
                  height: AppSize.getHeight(24).h,
                ),
                Text(
                  AppString.contactTheSeller,
                  style: AppStyle.headlineOrange,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  AppString.forMoreData,
                  style: AppStyle.bodyTitle,
                ),
                SizedBox(
                  height: AppSize.getHeight(8).h,
                ),
                SellerDetails(seller: seller),
                SizedBox(
                  height: AppSize.getHeight(32).h,
                ),
                PublicButton(
                  title: "Contact Me",
                  width: 40.w,
                  borderRadius: 8,
                  onPressed: () {
                    // todo: navigate to chat
                  },
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}








