import 'package:flutter/material.dart';
import 'package:lep_go/app/apis_demo.dart';

import '../../resources/styles/app_style.dart';
import '../widgets/notification_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Notification",
          style: AppStyle.headline,
        ),
      ),
      body: ListView.separated(
          itemCount: 10,
          itemBuilder: (_, index) {
            return NotificationTile(
              title: notifiDemo.title,
              body: notifiDemo.body,
            );
          },
          separatorBuilder: (_, __) {
            return const Divider();
          }),
    );
  }
}

