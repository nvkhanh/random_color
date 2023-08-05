import 'package:flutter/material.dart';
import 'package:random_color/my_home_page.dart';

/// My Application class
class MyApp extends StatelessWidget {
  /// My Application contractor don't have any required properties
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Random color'),
    );
  }
}
