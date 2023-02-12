part of 'add_product_cubit.dart';

abstract class AddProductState extends Equatable {
  const AddProductState();

  @override
  List<Object> get props => [];
}

class AddProductInitial extends AddProductState {}
class ChooseProductType extends AddProductState {
  final String productType;

  const ChooseProductType(this.productType);

    @override
  List<Object> get props => [productType];
}
