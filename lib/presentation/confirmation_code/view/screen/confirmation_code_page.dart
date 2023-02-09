import 'package:flutter/material.dart';
import '../../../resources/styles/app_style.dart';
import '../../../resources/switchers/app_router.dart';
import '../../../resources/widgets/back_arrow.dart';
import '../../../resources/widgets/public_button.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/constants/app_size.dart';
import '../widgets/code_text_field.dart';

class ConfirmationCodePage extends StatefulWidget {
  final String email;
  const ConfirmationCodePage({super.key, required this.email});

  @override
  State<ConfirmationCodePage> createState() => _ConfirmationCodePageState();
}

class _ConfirmationCodePageState extends State<ConfirmationCodePage> {
  late final TextEditingController _codeController;
  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(AppSize.getWidth(27).w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:AppSize.getHeight(24).h),
                const PublicBackArrow(),
                SizedBox(height:AppSize.getHeight(120).h),
                Text("Enter Confirmaiton Code", style: AppStyle.headline),
                const SizedBox(
                  height: 4,
                ),
                Text("The 4-digit code sent to", style: AppStyle.subTitle),
                const SizedBox(
                  height: 4
                ),
                Text(
                  widget.email,
                  style: AppStyle.subTitle,
                ),
                const SizedBox(
                  height: 8
                ),
                CodeTextField(codeController: _codeController),
                const SizedBox(
                  height: 8
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Send The Code Again?",
                    style: AppStyle.textButton,
                  ),
                ),
                 SizedBox(
                  height: AppSize.getHeight(16).h
                ),
                PublicButton(
                    title: "Confirm",
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.layouts);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

