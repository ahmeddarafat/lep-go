import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

import '../../resources/widgets/public_product_card.dart';
import '../../resources/constants/app_strings.dart';
import '../../resources/widgets/public_back_arrow.dart';
import '../widgets/mark_container.dart';
import '../widgets/personal_data_card.dart';
import '../widgets/title_container.dart';

class ProfileSettingPage extends StatelessWidget {
  const ProfileSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const PublicBackArrow(),
        title: Text(
          AppString.profileSetting,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.getWidth(16).w,
        ),
        child: Column(
          children: [
            SizedBox(height: AppSize.getHeight(13).h),
            const PersonalDataCard(),
            SizedBox(height: AppSize.getHeight(36).h),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: AppSize.getWidth(8).w,
                      right: AppSize.getWidth(8).w,
                      top: AppSize.getHeight(41).h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.separated(
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return Stack(
                          children: [
                            const PublicProductCard(
                              showFavorite: false,
                              backgroundColor: AppColors.white,
                            ),
                            Positioned(
                              top: 10,
                              right: 0,
                              child: Column(
                                children: const [
                                  MarkContainer(
                                    icon: Icons.edit,
                                    color: AppColors.grey3b,
                                  ),
                                  MarkContainer(
                                    icon: Icons.delete,
                                    color: AppColors.red,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (_, index) {
                        return SizedBox(
                          height: AppSize.getHeight(20).h,
                        );
                      },
                    ),
                  ),
                  const TitleContainer(title: AppString.myProducts)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
