import 'package:flutter/material.dart';
import '../constants/app_size.dart';
import 'package:sizer/sizer.dart';

import '../styles/app_colors.dart';

class PublicButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const PublicButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppSize.getHeight(16).h),
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
      ),
    );
  }
}
