import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/Grid/custom_grid_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridItem(color: Colors.grey),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridItem(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
