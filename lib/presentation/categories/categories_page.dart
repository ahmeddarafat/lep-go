import 'package:flutter/material.dart';
import '../resources/constants/app_assets.dart';
import 'package:sizer/sizer.dart';

import '../resources/constants/app_size.dart';
import '../resources/constants/app_strings.dart';
import '../resources/styles/app_colors.dart';
import '../resources/widgets/public_back_arrow.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const PublicBackArrow(),
          title: Text(
            AppString.types,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(16).w),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 8,
                childAspectRatio: 0.85),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  // todo: navigate to page of category
                },
                child: Column(
                  children: [
                    Image.asset(AppAssets.bicycleCate2),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.pink,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Bicycle",
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
