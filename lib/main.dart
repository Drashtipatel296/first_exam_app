import 'package:first_exam_app/cartscreen.dart';
import 'package:first_exam_app/home.dart';
import 'package:first_exam_app/product.dart';
import 'package:first_exam_app/secondscreen.dart';
import 'package:flutter/material.dart';

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
      initialRoute: '/home',
      routes: {
        '/home' : (context) => const HomeScreen(),
        '/second' : (context) => const SecondScreen(),
        '/product' : (context) => const ProductScreen(),
        '/cart' : (context) => const CartScreen(),
      },
    );
  }
}
