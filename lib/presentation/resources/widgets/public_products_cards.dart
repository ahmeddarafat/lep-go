import 'package:flutter/material.dart';
import '../switchers/app_router.dart';
import 'package:sizer/sizer.dart';

import '../../../app/apis_demo.dart';
import '../constants/app_size.dart';
import '../constants/app_strings.dart';

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
        return ProductCard(index: index);
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.productDetails);
      },
      child: Column(
        children: [
          Container(
            width: 45.w,
            height: AppSize.getHeight(100).h,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
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
          const SizedBox(height: 4),
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
  }
}
