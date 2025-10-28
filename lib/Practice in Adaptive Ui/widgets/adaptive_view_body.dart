import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/custom_grid_builder.dart';

class AdaptiveViewBody extends StatelessWidget {
  const AdaptiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomGridBuilder(),
      ],
    );
  }
}


