import 'package:flutter/material.dart';
import 'package:food_app/Widgets/CartPage.dart';
import 'package:food_app/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FOOD APP",
      routes: {
      "/": (context) => Homepage(),
      "cartPage":(context)=>Cartpage(),
      },
    );
  }
}
