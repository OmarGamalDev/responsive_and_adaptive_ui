import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var appBar = AppBar(title: const Text('MediaQuery Test'));
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var availableHeight = screenHeight - appBar.preferredSize.height - statusBarHeight;
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            width: 200,
            height: availableHeight * 0.3,
          ),
          Container(
            color: Colors.red,
            width: 200,
            height: availableHeight * 0.3,
          ),
          Container(
            color: Colors.black,
            width: 200,
            height: availableHeight * 0.3,
          ),
        ],
      ),
    );
  }
}
