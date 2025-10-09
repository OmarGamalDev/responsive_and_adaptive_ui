import 'package:flutter/material.dart';

class FlexibleTest extends StatelessWidget {
  const FlexibleTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(color: Colors.blue, width: 200, height: 100),
          ),
          Container(color: Colors.red, width: 200, height: 100),
          Container(color: Colors.black, width: 200, height: 100),
          Container(color: Colors.green, width: 200, height: 100),
        ],
      ),
    );
  }
}
