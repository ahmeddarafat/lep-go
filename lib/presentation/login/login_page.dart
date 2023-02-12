import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../resources/constants/app_assets.dart';
import '../resources/constants/app_size.dart';
import '../resources/constants/app_strings.dart';
import '../resources/styles/app_colors.dart';
import '../resources/switchers/app_router.dart';
import '../resources/widgets/public_button.dart';
import '../resources/widgets/public_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(30).w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.logoTransparent,
                    width: AppSize.getWidth(237).w,
                    height: AppSize.getHeight(178).h,
                  ),
                  Text(
                    AppString.loginTitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: AppSize.getHeight(8).h),
                  Text(
                    AppString.loginSubTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: AppSize.getHeight(32).h),
                  PublicTextFormField(
                    hint: AppString.emailAddressHint,
                     showprefixIcon: true,
                    prefixIcon: Icons.email_outlined,
                    controller: _emailController,
                    validator: (String? email) {
                      if (email != null&& email.isNotEmpty) return null;
                      return "Enter your Eamil Address";
                    },
                  ),
                  SizedBox(height: AppSize.getHeight(24).h),
                  PublicTextFormField(
                    hint: AppString.passwordHint,
                    showprefixIcon: true,
                    prefixIcon: Icons.lock,
                    controller: _passwordController,
                    validator: (String? password) {
                      if (password != null && password.isNotEmpty) return null;
                      return "Enter your Password";
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        // todo: forget password operation
                      },
                      child: Text(
                        AppString.forgetPassword,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.getHeight(18).h),
                  PublicButton(
                    title: "Login",
                    onPressed: () {
                      // todo: test "!"
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, AppRoutes.layouts);
                      }
                    },
                  ),
                  SizedBox(height: AppSize.getHeight(32).h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.dontHaveEmail,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.register);
                        },
                        child: Text(
                          AppString.registerNow,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSize.getHeight(16).h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const DefaultDivider(),
                      Text(
                        AppString.loginWith,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const DefaultDivider(),
                    ],
                  ),
                  SizedBox(height: AppSize.getHeight(24).h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          // todo login operation with google
                        },
                        icon: Image.asset(AppAssets.googleLogo),
                      ),
                      IconButton(
                        onPressed: () {
                          // todo: login operation with facebook
                        },
                        icon: Image.asset(AppAssets.facebookLogo),
                      ),
                      IconButton(
                        onPressed: () {
                          // todo: login operation with twitter
                        },
                        icon: Image.asset(AppAssets.twitterLogo),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 100,
      color: AppColors.lightGray.withOpacity(0.4),
    );
  }
}
