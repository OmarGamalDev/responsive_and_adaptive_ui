import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/adaptive_view_body.dart';

class AdaptiveView extends StatelessWidget {
  const AdaptiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD8D8DB),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: const CustomAppBar(),
      ),
      // drawer: Drawer(),
      body: AdaptiveViewBody(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: Colors.white),
      ),
    );
  }
}
