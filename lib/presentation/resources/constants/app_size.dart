class AppSize {
  // the width & height of ui adobe design
  static const double _designWidth = 390;
  static const double _designHeight = 844;

  // Sizer package provides 100 as width & as height by present
  static double getWidth(double width) => (width * 100) / _designWidth;
  static double getHeight(double height) => (height * 100) / _designHeight;
}
