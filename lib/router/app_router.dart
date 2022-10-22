import 'package:flutter/material.dart';
import 'package:flutter_travel/model/catalog_model.dart';
import 'package:flutter_travel/presentation/screens/home_page.dart';
import 'package:flutter_travel/presentation/screens/travel_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
        break;

      case '/travel':
        return MaterialPageRoute(
            builder: (_) =>
                TravelScreen(model: settings.arguments as CatalogModel));
        break;

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
