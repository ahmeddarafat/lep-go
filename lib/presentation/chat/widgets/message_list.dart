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

class MessagesList extends StatelessWidget {
  const MessagesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MessagesCubit, MessagesState>(
        builder: (context, state) {
          var cubit = MessagesCubit.get(context);
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            controller: ScrollController(
                // keepScrollOffset: false
                ),
            itemCount: cubit.messages.length,
            itemBuilder: (context, index) {
              return cubit.messages[index];
            },
            separatorBuilder: (context, index) => SizedBox(
              height: AppSize.getHeight(20).h,
            ),
          );
        },
      ),
    );
  }
}
