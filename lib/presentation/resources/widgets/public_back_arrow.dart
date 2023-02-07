import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class PublicBackArrow extends StatelessWidget {
  const PublicBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.pop(context),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: AppColors.orange,
          ),
          Text(
            "Back",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
