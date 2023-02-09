class ProductDetailsModel {
  final List<String> images;
  final String name;
  final double price;
  final String place;
  final String description;
  final String conditions;

  const ProductDetailsModel({
    required this.images,
    required this.name,
    required this.price,
    required this.place,
    required this.description,
    required this.conditions,
  });
}
