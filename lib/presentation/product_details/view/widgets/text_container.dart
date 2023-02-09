// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:sizer/sizer.dart';

import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/styles/app_style.dart';


class TextContainer extends StatelessWidget {
  final String text;
  const TextContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.getWidth(200).w,
      height: AppSize.getHeight(83).h,
      decoration: BoxDecoration(
        color: AppColors.whithGray.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: AppStyle.bodySubTitle,
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}

