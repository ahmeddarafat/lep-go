import 'package:flutter/material.dart';
import 'package:lep_go/presentation/categories/categories_page.dart';
import 'package:lep_go/presentation/offers/offer_page.dart';
import 'package:lep_go/presentation/products/products_page.dart';
import 'package:lep_go/presentation/layouts/layouts_page.dart';
import '../../home/home_page.dart';
import '../../login/login_page.dart';

import '../../register/register_page.dart';
import '../../splash/splash_page.dart';

class AppRoutes {
  static const String splash = "/";
  static const String home = "/home";
  static const String login = "/login";
  static const String register = "/register";
  static const String layouts = "/layouts";
  static const String categories = "/categories";
  static const String offers = "/offers";
  static const String products = "/products";
}

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case AppRoutes.layouts:
        return MaterialPageRoute(builder: (_) => LayoutsPage());
      case AppRoutes.categories:
        return MaterialPageRoute(builder: (_) => const CategoriesPage());
      case AppRoutes.offers:
        return MaterialPageRoute(builder: (_) => const OfferPage());
      case AppRoutes.products:
        return MaterialPageRoute(builder: (_) => const ProductsPage());
      default:
        return MaterialPageRoute(builder: (_) => _undfinedPage());
    }
  }

  static Scaffold _undfinedPage() {
    return Scaffold(
      appBar: AppBar(title: const Text("Undfined Page")),
      body: const Center(child: Text("Undfined Page")),
    );
  }
}
