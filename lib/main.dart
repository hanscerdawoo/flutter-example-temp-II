import 'package:app_dev/presentation/api_demo/providers/api_demo_provider.dart';
import 'package:app_dev/presentation/counters/providers/counter_provider.dart';
import 'package:app_dev/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => ApiDemoProvider()),
      ],
      child: const Presentation(),
    ),
  );
}
