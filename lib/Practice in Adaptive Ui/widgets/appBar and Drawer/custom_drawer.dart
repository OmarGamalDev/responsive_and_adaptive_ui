import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/models/drawer_item_model.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/appBar%20and%20Drawer/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.yellow,
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 100)),
          CustomDrawerItem(
            itemModel: DrawerItemModel(title: 'Home', icon: Icons.home),
          ),
          CustomDrawerItem(
            itemModel: DrawerItemModel(title: 'Profile', icon: Icons.person),
          ),
          CustomDrawerItem(
            itemModel: DrawerItemModel(title: 'Settings', icon: Icons.settings),
          ),
          CustomDrawerItem(
            itemModel: DrawerItemModel(title: 'Help', icon: Icons.help),
          ),
        ],
      ),
    );
  }
}
