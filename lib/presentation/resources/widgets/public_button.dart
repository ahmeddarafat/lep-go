import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_size.dart';
import '../styles/app_colors.dart';

class PublicButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double width;
  final double borderRadius;
  final Widget? titleWidget;
  final bool useTitleWidget;

  const PublicButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.width = double.infinity,
      this.borderRadius = 24,
      this.titleWidget,
      this.useTitleWidget = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppSize.getHeight(12).h),
          child: useTitleWidget
              ? titleWidget
              : Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
      ),
    );
  }
}
