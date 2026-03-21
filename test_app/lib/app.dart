import 'package:flutter/material.dart';
import 'package:multiplayer_test_app/screen1.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Multiplayer test app",
      home: Screen1(),
    );
  }
}
