import 'package:flutter/material.dart';

class FlexibleTest extends StatelessWidget {
  const FlexibleTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: FittedBox(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, size: 100),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.red,
              child: FittedBox(fit: BoxFit.scaleDown, child: Icon(Icons.add)),
            ),
          ),
          Container(color: Colors.black, width: 200, height: 100),
          Container(color: Colors.green, width: 200, height: 100),
        ],
      ),
    );
  }
}
