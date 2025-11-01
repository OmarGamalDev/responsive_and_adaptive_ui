import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/ListView/custom_list_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
            child: AspectRatio(aspectRatio: 1, child: CustomListItem()),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
