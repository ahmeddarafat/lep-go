import 'package:flutter/material.dart';
import '../styles/app_fonts.dart';


class AppText extends StatelessWidget {
  final String txt;
  final String? ff;
  final bool? under;
  final Color color;
  final double size;
  final int? max;
  final FontWeight? fw;
  final TextAlign? align;

  const AppText({
    super.key,
    required this.txt,
    required this.color,
    required this.size,
    this.under,
    this.align,
    this.max,
    this.fw,
    this.ff,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: align ?? TextAlign.center,
      maxLines: max ?? 2,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: 1.32,
        fontFamily: ff ?? AppFontFamily.montserrat,
        fontWeight: fw ?? AppFontWeight.regular,
        decoration:
            under == true ? TextDecoration.underline : TextDecoration.none,
        overflow: TextOverflow.ellipsis
      ),
    );
  }
}
