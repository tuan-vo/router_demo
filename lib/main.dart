import 'package:flutter/material.dart';
import 'package:router_demo/first_page.dart';
import 'package:router_demo/route_generator.dart';
import 'package:router_demo/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const FirstPage(),
      // routes: {'/second': (context) => SecondPage(data: "Data from main")},
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generatorRoute,
    );
  }
}
