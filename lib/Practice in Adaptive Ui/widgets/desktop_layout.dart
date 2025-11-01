import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/appBar%20and%20Drawer/custom_drawer.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/custom_desktop_widget.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(child: CustomDesktopWidget()),
      ],
    );
  }
}
