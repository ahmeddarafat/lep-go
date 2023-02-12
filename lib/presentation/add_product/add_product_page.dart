import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lep_go/domain/cubit/add_product/add_product_cubit.dart';
import 'package:lep_go/presentation/resources/constants/app_assets.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';
import 'package:lep_go/presentation/resources/constants/app_strings.dart';
import 'package:lep_go/presentation/resources/styles/app_colors.dart';
import 'package:lep_go/presentation/resources/widgets/public_button.dart';
import 'package:lep_go/presentation/resources/widgets/public_text_form_field.dart';
import 'package:sizer/sizer.dart';

import '../resources/constants/app_constant.dart';
import '../resources/styles/app_style.dart';
import '../resources/widgets/app_text.dart';

class AdditionPage extends StatefulWidget {
  const AdditionPage({super.key});

  @override
  State<AdditionPage> createState() => _AdditionPageState();
}

class _AdditionPageState extends State<AdditionPage> {
  late TextEditingController _productNameController;
  late TextEditingController _priceController;
  late TextEditingController _descriptionController;
  late TextEditingController _conditionController;

  @override
  void initState() {
    super.initState();
    _productNameController = TextEditingController();
    _priceController = TextEditingController();
    _descriptionController = TextEditingController();
    _conditionController = TextEditingController();
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    _conditionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('the whole tree rebuilt');
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          AppString.addProduct,
          style: AppStyle.headline,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(16).w),
        child: Container(
          color: AppColors.backgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.getWidth(16).w,
                vertical: AppSize.getHeight(12).h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      color: AppColors.white,
                      width: AppSize.getWidth(326).w,
                      child: Column(
                        children: [
                          SizedBox(
                            height: AppSize.getHeight(38).h,
                          ),
                          SvgPicture.asset(
                            AppAssets.uploadImg,
                            height: AppSize.getHeight(120).h,
                          ),
                          PublicButton(
                            title: "Upload Photo",
                            width: AppSize.getWidth(198).w,
                            onPressed: () {
                              // todo: image picker
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  AppText(
                    txt: "Specify Product Type",
                    color: AppColors.black,
                    size: 16.sp,
                    fw: FontWeight.bold,
                  ),
                  DropDownButton(
                    hint: productTypes[0],
                    items: productTypes,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  AppText(
                    txt: "Product Name",
                    color: AppColors.black,
                    size: 16.sp,
                    fw: FontWeight.bold,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  SizedBox(
                    height: AppSize.getWidth(36).w,
                    child: PublicTextFormField(
                      hint: "Write here...",
                      controller: _productNameController,
                      validator: (_) => null,
                      borderRadius: 5,
                      borderColor: Colors.grey,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: AppSize.getHeight(10).h,
                          horizontal: AppSize.getWidth(10).w),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        txt: "Price",
                        color: AppColors.black,
                        size: 16.sp,
                        fw: FontWeight.bold,
                      ),
                      AppText(
                        txt: "Peroid",
                        color: AppColors.black,
                        size: 16.sp,
                        fw: FontWeight.bold,
                      ),
                      AppText(
                        txt: "Discount",
                        color: AppColors.black,
                        size: 16.sp,
                        fw: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppSize.getHeight(40).h,
                    child: Row(
                      children: [
                        // PublicTextFormField(
                        //   hint: "Price",
                        //   controller: _priceController,
                        //   validator: (_) => null,
                        //   borderRadius: 5,
                        //   borderColor: Colors.grey,
                        // ),
                        // const DropDownButton(hint: "Peroid", items: peroidType),
                        // const DropDownButton(hint: "Discount", items: discontType)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DropDownButton extends StatefulWidget {
  final String hint;
  final List<String> items;
  const DropDownButton({super.key, required this.hint, required this.items});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        color: AppColors.white,
        padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(10).w),
        child: DropdownButton2(
          hint: AppText(
            txt: widget.hint,
            size: 12.sp,
            color: AppColors.lightGray,
          ),
          items: widget.items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: AppText(
                    txt: item,
                    color: AppColors.lightGray,
                    size: 12.sp,
                  ),
                ),
              )
              .toList(),
          value: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          buttonHeight: AppSize.getHeight(36).h,
          buttonWidth: double.infinity,
          itemHeight: AppSize.getHeight(36).h,
          buttonHighlightColor: AppColors.white,
        ),
      ),
    );
  }
}
