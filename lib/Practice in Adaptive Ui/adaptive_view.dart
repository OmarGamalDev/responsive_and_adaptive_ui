import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/adaptive_view_body.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/appBar%20and%20Drawer/custom_app_bar.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/appBar%20and%20Drawer/custom_drawer.dart';

class AdaptiveView extends StatefulWidget {
  const AdaptiveView({super.key});

  @override
  State<AdaptiveView> createState() => _AdaptiveViewState();
}

class _AdaptiveViewState extends State<AdaptiveView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD8D8DB),
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 900) {
              return CustomAppBar(scaffoldKey: scaffoldKey);
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
      drawer: const CustomDrawer(),
      body: AdaptiveViewBody(),
    );
  }
}
