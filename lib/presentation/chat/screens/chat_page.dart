import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:sizer/sizer.dart';
import '../../../domain/models/seller_model.dart';
import '../../resources/constants/app_size.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_style.dart';
import '../../resources/widgets/public_back_arrow.dart';
import '../widgets/bottom_chat_row.dart';
import '../widgets/message_list.dart';

class ChatPage extends StatefulWidget {
  final SellerModel person;
  const ChatPage({Key? key, this.person = sellerDemo}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late TextEditingController _messageController;
  @override
  void initState() {
    super.initState();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 2.0,
        title: Row(
          children: <Widget>[
            const PublicBackArrow(),
            const Spacer(),
            Text(widget.person.name, style: AppStyle.chatText),
            SizedBox(width: AppSize.getWidth(8).w),
            CircleAvatar(
              backgroundImage: AssetImage(widget.person.image),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.getWidth(14).w),
        child: Column(
          children: <Widget>[
            const MessagesList(),
            SizedBox(height: AppSize.getHeight(16).h),
            BottomRowChat(messageController: _messageController)
          ],
        ),
      ),
    );
  }
}
