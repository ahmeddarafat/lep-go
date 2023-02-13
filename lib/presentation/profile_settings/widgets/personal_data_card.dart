import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_text.dart';
import 'package:sizer/sizer.dart';

import '../../resources/constants/app_strings.dart';
import '../../resources/widgets/public_button.dart';
import '../../resources/widgets/public_text_form_field.dart';
import 'private_dialog.dart';
import 'title_container.dart';

class PersonalDataCard extends StatelessWidget {
  const PersonalDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: AppSize.getHeight(126).h,
          padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(8).w),
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SizedBox(
                height: AppSize.getHeight(43).h,
              ),
              const DataRow(
                title: AppString.nameHint,
                data: "Ahemd Mohamed",
              ),
              const DataRow(
                title: AppString.email,
                data: "Ahemd@gamil.com",
              ),
              const DataRow(
                title: AppString.phone,
                data: "0106587821",
              ),
            ],
          ),
        ),
        const TitleContainer(title: AppString.personalData),
        Positioned(
          right: 0,
          top: 0,
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return const PrivateDialog();
                },
              );
            },
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.getWidth(8).w,
                    vertical: AppSize.getHeight(4).h),
                decoration: const BoxDecoration(
                  color: AppColors.gray66,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Icon(
                  Icons.edit,
                  color: AppColors.white,
                  size: 16.sp,
                )),
          ),
        ),
      ],
    );
  }
}

class DataRow extends StatelessWidget {
  final String title;
  final String data;

  const DataRow({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: AppSize.getWidth(64).w,
          child: PublicText(
            txt: "$title:",
            color: AppColors.gray66,
            size: 12.sp,
            align: TextAlign.start,
          ),
        ),
        PublicText(
          txt: data,
          color: AppColors.black,
          size: 12.sp,
        ),
      ],
    );
  }
}
