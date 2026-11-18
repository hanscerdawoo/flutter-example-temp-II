import 'package:app_dev/presentation/cards/screens/product_screen.dart';
import 'package:app_dev/presentation/counters/screens/counter.dart';
import 'package:app_dev/presentation/counters/screens/new_counter.dart';
import 'package:app_dev/presentation/home/screens/home.dart';
import 'package:app_dev/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
