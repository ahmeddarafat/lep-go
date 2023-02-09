import 'package:flutter/material.dart';
import '../resources/constants/app_assets.dart';
import '../resources/constants/app_strings.dart';
import '../resources/constants/app_size.dart';
import '../resources/styles/app_colors.dart';
import '../resources/switchers/app_router.dart';
import '../resources/widgets/back_arrow.dart';
import '../resources/widgets/public_button.dart';
import '../resources/widgets/public_text_form_field.dart';
import 'package:sizer/sizer.dart';

enum Account { company, personal }

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("the whole tree rebuilt");
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(32).w),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const PublicBackArrow(),
                    Image.asset(
                      AppAssets.logoTransparent,
                      width: AppSize.getWidth(237).w,
                      height: AppSize.getHeight(178).h,
                    ),
                    Text(
                      AppString.registerTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(height: AppSize.getHeight(32).h),
                    DefaultTextFormField(
                      hint: AppString.nameHint,
                      showprefixIcon: true,
                      prefixIcon: Icons.person,
                      controller: _nameController,
                      validator: (String? name) {
                        if (name != null && name.isNotEmpty) return null;
                        return "Plase, Enter your name";
                      },
                    ),
                    SizedBox(height: AppSize.getHeight(16).h),
                    DefaultTextFormField(
                      hint: AppString.phoneHint,
                      showprefixIcon: true,
                      prefixIcon: Icons.phone,
                      controller: _phoneController,
                      validator: (String? phone) {
                        if (phone != null && phone.isNotEmpty) return null;
                        return "plase, Enter your phone number";
                      },
                    ),
                    SizedBox(height: AppSize.getHeight(16).h),
                    DefaultTextFormField(
                      hint: AppString.emailAddressHint,
                      showprefixIcon: true,
                      prefixIcon: Icons.email_outlined,
                      controller: _emailController,
                      validator: (String? email) {
                        if (email!.isNotEmpty) return null;
                        return "plase, Enter your email address";
                      },
                    ),
                    SizedBox(height: AppSize.getHeight(16).h),
                    DefaultTextFormField(
                      hint: AppString.passwordHint,
                      showprefixIcon: true,
                      prefixIcon: Icons.lock,
                      controller: _passwordController,
                      validator: (String? password) {
                        if (password!.isNotEmpty) return null;
                        return "plase, Enter your password";
                      },
                    ),
                    SizedBox(height: AppSize.getHeight(10).h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppString.account,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: AppSize.getHeight(10).h),
                    const LocalRadioButtons(),
                    SizedBox(height: AppSize.getHeight(18).h),
                    PublicButton(
                      title: "Register",
                      onPressed: () {
                        // todo: test "!"
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, AppRoutes.confirmCode,
                              arguments: _emailController.text
                              );
                        }
                      },
                    ),
                    SizedBox(height: AppSize.getHeight(32).h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.alreadyHaveAccount,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            AppString.loginNow,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class LocalRadioButtons extends StatefulWidget {
  const LocalRadioButtons({
    super.key,
  });

  @override
  State<LocalRadioButtons> createState() => _LocalRadioButtonsState();
}

class _LocalRadioButtonsState extends State<LocalRadioButtons> {
  Account? _accountValue;
  @override
  Widget build(BuildContext context) {
    debugPrint(' the row is rebuilt');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Radio(
              value: Account.personal,
              groupValue: _accountValue,
              activeColor: AppColors.orange,
              onChanged: (value) {
                setState(() {
                  _accountValue = value;
                });
              },
            ),
            const Text(AppString.personal),
          ],
        ),
        Row(
          children: [
            Radio(
              value: Account.company,
              groupValue: _accountValue,
              activeColor: AppColors.orange,
              onChanged: (value) {
                setState(() {
                  _accountValue = value;
                });
              },
            ),
            const Text(AppString.commpany),
          ],
        ),
      ],
    );
  }
}
