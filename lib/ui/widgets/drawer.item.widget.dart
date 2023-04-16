import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Function onAction;

  DrawerItemWidget({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        leadingIcon,
        color: Theme.of(context).primaryColor,
      ),
      trailing: Icon(
        trailingIcon,
        color: Theme.of(context).primaryColor,
      ),
      onTap: () => onAction(),
    );
  }
}
