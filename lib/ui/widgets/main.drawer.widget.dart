import 'package:flutter/material.dart';
import 'package:new_bloc/ui/widgets/drawer.item.widget.dart';
import 'package:new_bloc/ui/widgets/main.drawer.header.widget.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> menus = [
      {
        "title": "Home",
        "route": "/",
        "leadingIcon": Icons.home,
        "trailingIcon": Icons.arrow_forward_ios
      },
      {
        "title": "Counter",
        "route": "/counter",
        "leadingIcon": Icons.countertops_sharp,
        "trailingIcon": Icons.arrow_forward_ios
      },
      {
        "title": "Profil",
        "route": "/profil",
        "leadingIcon": Icons.person,
        "trailingIcon": Icons.arrow_forward_ios
      },
      {
        "title": "Setting",
        "route": "/setting",
        "leadingIcon": Icons.settings,
        "trailingIcon": Icons.arrow_forward_ios
      },
    ];
    return Drawer(
      child: Column(
        children: [
          const MainDrawerHeader(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return DrawerItemWidget(
                    title: menus[index]["title"],
                    leadingIcon: menus[index]["leadingIcon"],
                    trailingIcon: menus[index]["trailingIcon"],
                    onAction: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(
                        context,
                        menus[index]["route"],
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 6,
                  );
                },
                itemCount: menus.length),
          ),
        ],
      ),
    );
  }
}
