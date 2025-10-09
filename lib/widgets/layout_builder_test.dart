import 'package:flutter/material.dart';

class MobileLayoutBuilderTest extends StatelessWidget {
  const MobileLayoutBuilderTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsView(number: index);
                  },
                ),
              );
            },
            child: Container(
              color: Colors.lightBlue,
              margin: EdgeInsets.only(bottom: 30),
              child: ListTile(title: Text("item ")),
            ),
          );
        },
        itemCount: 50,
      ),
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Details for item $number", style: TextStyle(fontSize: 30)),
    );
  }
}

class DesktopLayoutBuilderTest extends StatefulWidget {
  const DesktopLayoutBuilderTest({super.key});

  @override
  State<DesktopLayoutBuilderTest> createState() =>
      _DesktopLayoutBuilderTestState();
}

class _DesktopLayoutBuilderTestState extends State<DesktopLayoutBuilderTest> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index + 1;
                  });
                },
                child: Container(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.only(bottom: 30),
                  child: ListTile(title: Text("item ")),
                ),
              );
            },
            itemCount: 50,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                "index: $selectedIndex",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
