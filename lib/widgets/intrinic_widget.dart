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
                      child: SizedBox(height: 200),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.red)),
                        SizedBox(height: 20),
                        Expanded(child: Container(color: Colors.black)),
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
