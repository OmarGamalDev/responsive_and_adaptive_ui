import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/widgets/layout_builder_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            log(constraints.maxWidth.toString());
            if (constraints.maxWidth < 600) {
              return MobileLayoutBuilderTest();
            } else {
              return DesktopLayoutBuilderTest();
            }
          },
        ),
      ),
    );
  }
}
