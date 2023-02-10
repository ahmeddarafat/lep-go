import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:sizer/sizer.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_style.dart';
import '../widgets/chat_tile.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List friends = [];
  List taps = ['Camera', 'Chats', 'Status', 'Calls'];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Chat",
          style: AppStyle.headline,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(12).w),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ChatItem();
            }),
      ),
    );
  }
}
