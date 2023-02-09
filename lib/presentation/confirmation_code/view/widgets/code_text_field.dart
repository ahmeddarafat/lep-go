import 'package:flutter/material.dart';
import '../../../resources/styles/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/constants/app_size.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
    required TextEditingController codeController,
  }) : _codeController = codeController;

  final TextEditingController _codeController;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: false,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      textStyle: const TextStyle(color: AppColors.orange),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: AppSize.getHeight(64).h,
        fieldWidth: AppSize.getWidth(69).w,
        activeColor: Colors.grey,
        selectedColor: Colors.grey,
        inactiveColor: Colors.grey,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        errorBorderColor: Colors.grey,
      ),
      controller: _codeController,
      onCompleted: (v) {
        debugPrint("Completed");
      },
      onChanged: (value) {
        debugPrint(value);
        // setState(() {
        //   currentText = value;
        // });
      },
      beforeTextPaste: (text) {
        debugPrint("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
