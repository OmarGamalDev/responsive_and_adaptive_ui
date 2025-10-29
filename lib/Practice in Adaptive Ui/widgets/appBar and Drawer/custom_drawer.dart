import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/models/drawer_item_model.dart';
import 'package:responsive_and_adaptive_ui/Practice%20in%20Adaptive%20Ui/widgets/appBar%20and%20Drawer/custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items =  [
    DrawerItemModel(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerItemModel(title: 'P R O F I L E', icon: Icons.person),
    DrawerItemModel(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerItemModel(title: 'H E L P', icon: Icons.help),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 100)),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
