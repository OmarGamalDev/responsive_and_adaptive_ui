import 'package:flutter/material.dart';

class ExpandedTest extends StatelessWidget {
  const ExpandedTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Test')),
      body: Column(
        children: [
          Expanded(flex: 5, child: Container(color: Colors.blue, height: 100)),
          Expanded(flex: 2, child: Container(color: Colors.red, height: 100)),
          Expanded(flex: 3, child: Container(color: Colors.black, height: 100)),
        ],
      ),
    );
  }
}
