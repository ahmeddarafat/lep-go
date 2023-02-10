import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lep_go/domain/cubit/messages/messages_cubit.dart';
import '../domain/cubit/bottom_navigation_bar/bottom_navigation_cubit.dart';
import '../presentation/resources/styles/app_themes.dart';
import '../presentation/resources/switchers/app_router.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => BottomNavigationCubit(),),
          BlocProvider(create: (_) => MessagesCubit(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerate.getRoute,
          theme: AppTheme.getLight(),
        ),
      );
    });
  }
}
