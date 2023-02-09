import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../resources/constants/app_assets.dart';
import '../resources/constants/app_size.dart';
import '../resources/styles/app_colors.dart';
import '../resources/styles/app_fonts.dart';
import '../add_product/add_product_page.dart';
import '../chat/chat_page.dart';
import '../favorite/favorite_page.dart';
import '../notification/notification_page.dart';

import '../../domain/cubit/bottom_navigation_bar/bottom_navigation_cubit.dart';
import '../home/view/screen/home_page.dart';

class LayoutsPage extends StatelessWidget {
  LayoutsPage({super.key});

  final List<Widget> screens = [
    const ChatPage(),
    const FavoritePage(),
    const HomePage(),
    const AdditionPage(),
    const NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        var cubit = BottomNavigationCubit.get(context);
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            extendBody: true,
            appBar: AppBar(
              titleSpacing: AppSize.getWidth(80).w,
              title: RichText(
                  text: const TextSpan(
                      style: TextStyle(fontSize: AppFontSize.f32),
                      children: [
                    TextSpan(
                        text: "Lep",
                        style: TextStyle(color: AppColors.blackBlue)),
                    TextSpan(
                        text: "Go", style: TextStyle(color: AppColors.orange)),
                  ])),
              leadingWidth: AppSize.getWidth(30).w,
              leading: SvgPicture.asset(AppAssets.groups),
              actions: const [
                CircleAvatar(
                  backgroundColor: AppColors.orange,
                ),
              ],
            ),
            body: IndexedStack(
              index: cubit.currentIndexUser,
              children: screens,
            ),
            bottomNavigationBar: homePageBottomNavigationBar(cubit),
          ),
        );
      },
    );
  }

  homePageBottomNavigationBar(cubit) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: AppColors.orange,
      color: AppColors.orange,
      index: cubit.currentIndexUser,
      animationDuration: const Duration(milliseconds: 400),
      height: 60,
      items: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(AppAssets.chat, color: AppColors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(AppAssets.favorite, color: AppColors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(AppAssets.homeFilled),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child:
              SvgPicture.asset(AppAssets.addToPhotos,  ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: SvgPicture.asset(AppAssets.alaram, color: AppColors.white),
        ),
      ],
      onTap: (index) {
        cubit.changeIndexUser(index);
      },
    );
  }
}
