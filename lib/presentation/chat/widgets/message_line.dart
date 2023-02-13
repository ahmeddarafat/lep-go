import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/domain/cubit/messages/messages_cubit.dart';
import 'package:sizer/sizer.dart';
import '../../../domain/models/seller_model.dart';
import '../../resources/constants/app_size.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_style.dart';
import '../../resources/widgets/public_back_arrow.dart';
class MessageLine extends StatelessWidget {
  final String? text;
  final bool isMe;

  const MessageLine({
    this.text,
    required this.isMe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 2.0,
          color: isMe ? AppColors.orange : AppColors.backgroundMessage,
          borderRadius: isMe
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                )
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.getWidth(14).w,
              vertical: AppSize.getHeight(10).h,
            ),
            child: Text(
              '$text',
              style: TextStyle(
                  color: isMe ? AppColors.white : AppColors.orange,
                  fontSize: 12.sp),
            ),
          ),
        ),
      ],
    );
  }
}
