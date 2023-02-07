import 'package:flutter/material.dart';
import 'package:lep_go/presentation/home/components.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:sizer/sizer.dart';

import '../resources/constants/app_size.dart';
import '../resources/constants/app_strings.dart';
import '../resources/widgets/public_back_arrow.dart';
import '../resources/widgets/public_offer_card.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const PublicBackArrow(),
          title: Text(
            AppString.offers,
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
                const HeadLineRow(
                  title: "Common",
                  showAllWord: false,
                ),
                SizedBox(
                  height: AppSize.getHeight(8).h,
                ),
                const RowOfOffers(),
                SizedBox(
                  height: AppSize.getHeight(8).h,
                ),
                const HeadLineRow(
                  title: "All",
                  showAllWord: false,
                ),
                SizedBox(
                  height: AppSize.getHeight(8).h,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1),
                  itemCount: offersImg.length,
                  itemBuilder: (_, int index) {
                    return InkWell(
                      onTap: () {
                        // todo: navigate to page of product offer
                      },
                      child: DefaultOfferCard(
                        index: index,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
