import 'package:flutter/material.dart';
import 'package:lep_go/presentation/chat/screens/chat_page.dart';
import 'package:lep_go/presentation/chat/screens/chats_page.dart';
import 'package:lep_go/presentation/seller_profile/screen/seller_profile.dart';
import '../../categories/categories_page.dart';
import '../../confirmation_code/view/screen/confirmation_code_page.dart';
import '../../offers/offer_page.dart';
import '../../product_details/view/screen/product_details_page.dart';
import '../../products/products_page.dart';
import '../../layouts/layouts_page.dart';
import '../../home/view/screen/home_page.dart';
import '../../login/login_page.dart';

import '../../register/register_page.dart';
import '../../splash/splash_page.dart';

class AppRoutes {
  static const String splash = "/";
  static const String chat = "/chat";
  static const String chats = "/chats";
  static const String home = "/home";
  static const String login = "/login";
  static const String register = "/register";
  static const String layouts = "/layouts";
  static const String categories = "/categories";
  static const String offers = "/offers";
  static const String products = "/products";
  static const String productDetails = "/product details";
  static const String confirmCode = "/Confirmation Code";
  static const String sellerProfile = "/Seller Profile";
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
      case AppRoutes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetails());
      case AppRoutes.chat:
        return MaterialPageRoute(builder: (_) => const ChatPage());
      case AppRoutes.chats:
        return MaterialPageRoute(builder: (_) => const ChatsPage());
      case AppRoutes.sellerProfile:
        return MaterialPageRoute(builder: (_) => const SellerProfile());
      case AppRoutes.confirmCode:
        return MaterialPageRoute(
            builder: (_) => _confirmCodePage(routeSettings));
      default:
        return MaterialPageRoute(builder: (_) => _undfinedPage());
    }
  }

  static ConfirmationCodePage _confirmCodePage(RouteSettings routeSettings) {
    final String email = routeSettings.arguments as String;
    return ConfirmationCodePage(email: email);
  }

  static Scaffold _undfinedPage() {
    return Scaffold(
      appBar: AppBar(title: const Text("Undfined Page")),
      body: const Center(child: Text("Undfined Page")),
    );
  }
}
