import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lep_go/presentation/resources/constants/app_constant.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(AddProductInitial());

  static AddProductCubit get(BuildContext context) => BlocProvider.of(context);

  String productType = productTypes[0];
  void chooseProductType(String? productType) {
    if (productType != null) {
      this.productType = productType;
      emit(ChooseProductType(productType));
    }
  }
}
