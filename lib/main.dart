import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/widgets/expanded_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ExpandedTest());
  }
}
