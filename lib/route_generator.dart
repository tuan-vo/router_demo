import 'package:flutter/material.dart';
import 'package:router_demo/first_page.dart';
import 'package:router_demo/second_page.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(title: const Text("Error route")),
      body: const Center(child: Text("ERROR!")),
    );
  });
}
