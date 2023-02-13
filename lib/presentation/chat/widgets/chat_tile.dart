import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/switchers/app_router.dart';
import 'package:sizer/sizer.dart';

import '../../resources/styles/app_colors.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(85).h,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.chat);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppSize.getHeight(15).h),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: AppSize.getWidth(36).w,
                backgroundImage: AssetImage(sellerDemo.image),
              ),
              SizedBox(
                width: AppSize.getWidth(15).w,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ahmed Arafat',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.grey3b,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '6:50Am',
                          style: TextStyle(
                              color: AppColors.gray66, fontSize: 12.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      width: AppSize.getWidth(233).w,
                      child: Text(
                        'Hello dear customer, do you want to continue',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.gray66,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
