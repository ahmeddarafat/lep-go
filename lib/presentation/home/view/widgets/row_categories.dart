import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/apis_demo.dart';
import '../../../resources/constants/app_size.dart';
import '../../../resources/switchers/app_router.dart';
import 'private_category_container.dart';

class RowCategories extends StatelessWidget {
  const RowCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(86).h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: titleOfCategories.length,
        itemBuilder: (context, index) {
          return InkWell(  
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.products),
            child: CategoryContainer(index: index),
          );
        },
        separatorBuilder: ((context, index) {
          return const SizedBox(width: 10);
        }),
      ),
    );
  }
}


