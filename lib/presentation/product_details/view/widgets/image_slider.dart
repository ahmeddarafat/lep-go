
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:lep_go/domain/models/product_details_model.dart';
import 'package:lep_go/presentation/resources/constants/app_size.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.product,
  });

  final ProductDetailsModel product;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: AppSize.getHeight(216).h,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration:
            const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: product.images.map((image) {
        return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset(image));
      }).toList(),
    );
  }
}