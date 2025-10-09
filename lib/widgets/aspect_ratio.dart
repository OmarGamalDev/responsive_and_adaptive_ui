import 'package:flutter/material.dart';

class AspectRatioTest extends StatelessWidget {
  const AspectRatioTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 3 / 1,
              child: Container(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
