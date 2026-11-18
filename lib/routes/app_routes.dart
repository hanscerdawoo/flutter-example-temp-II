import 'package:app_dev/presentation/api_demo/screens/api_demo_2.dart';
import 'package:app_dev/presentation/cards/screens/product_screen.dart';
import 'package:app_dev/presentation/counters/screens/counter.dart';
import 'package:app_dev/presentation/counters/screens/new_counter_2.dart';
import 'package:app_dev/presentation/home/screens/home.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String home = '/';
  static const String counterOriginal = 'counterOriginal';
  static const String counterClass = 'counterClass';
  static const String sales = 'sales';
  static const String apiRest = 'apiRest';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => Home(),
    counterOriginal: (context) => Counter(title: 'Contador original'),
    counterClass: (context) => NewCounter2(),
    sales: (context) => ProductScreen(),
    apiRest: (context) => ApiDemo2(),
  };
}
