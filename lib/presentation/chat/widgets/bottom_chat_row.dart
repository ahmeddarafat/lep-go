import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/domain/cubit/messages/messages_cubit.dart';
import 'package:sizer/sizer.dart';
import '../../../domain/models/seller_model.dart';
import '../../resources/constants/app_size.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_style.dart';
import '../../resources/widgets/back_arrow.dart';

class BottomRowChat extends StatelessWidget {
  const BottomRowChat({
    super.key,
    required TextEditingController messageController,
  }) : _messageController = messageController;

  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: AppSize.getHeight(55).h,
            child: TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Write your message here...',
                hintStyle: AppStyle.chatText,
                filled: false,
                fillColor: AppColors.whithGray,
                prefixIcon: const Icon(Icons.emoji_emotions_outlined),
                suffixIcon: const Icon(Icons.camera_alt),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppSize.getWidth(20).w,
                  vertical: AppSize.getHeight(17).h,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.whithGray),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.whithGray),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: AppSize.getWidth(49).w,
          height: AppSize.getWidth(49).w,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: AppColors.orange,
              onPressed: () {
                MessagesCubit.get(context).addMessage(
                  isMe: true,
                  text: _messageController.text,
                );
                _messageController.clear();
              },
              child: const Icon(
                Icons.send,
                color: AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
