import 'package:flutter/material.dart';

import '../constants/app_strings.dart';

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
