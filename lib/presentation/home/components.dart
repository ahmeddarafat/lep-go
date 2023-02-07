import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../app/apis_demo.dart';
import '../resources/constants/app_size.dart';
import '../resources/constants/app_strings.dart';
import '../resources/styles/app_colors.dart';
import '../resources/widgets/public_offer_card.dart';

class RowOfOffers extends StatelessWidget {
  const RowOfOffers({
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
            child: DefaultOfferCard(
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

class HeadLineRow extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool showAllWord;
  const HeadLineRow({
    super.key,
    required this.title,
    this.onTap,
    this.showAllWord = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        showAllWord
            ? InkWell(
                onTap: onTap,
                child: Text(
                  AppString.allTypes,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

class ProductsCards extends StatelessWidget {
  const ProductsCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          childAspectRatio: 0.9),
      itemCount: suggestionImg.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            // todo: navigate to page of suggestion product
          },
          child: Column(
            children: [
              Container(
                width: 45.w,
                height: AppSize.getHeight(100).h,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Image.asset(
                  suggestionImg[index],
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                suggestionTitle[index],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height:4),
              Text(
                AppString.bodyOfProduct,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(
                    Icons.tag,
                    color: Colors.red,
                    size: 20,
                  ),
                  Text(
                    "500",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    " for day",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Spacer(),
                  const Icon(Icons.star, color: Colors.yellow, size: 20),
                  Text(
                    "4.5",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
