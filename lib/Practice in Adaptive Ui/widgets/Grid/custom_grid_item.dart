import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, this.color});
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.grey,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black, width: 1.0),
        ),
      ),
    );
  }
}