import 'package:flutter/material.dart';

class IntrinsicWidget extends StatelessWidget {
  const IntrinsicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          SizedBox(height: 20),
                          SizedBox(height: 20),
                          SizedBox(height: 20),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Container(color: Colors.red, height: 60),
                        SizedBox(height: 20),
                        Container(color: Colors.black, height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
