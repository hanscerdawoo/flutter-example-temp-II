import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleAppBar;

  const CustomAppBar({super.key, required this.titleAppBar});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      title: Text('CINicaragua ${titleAppBar.isEmpty ? '' : '/ $titleAppBar'}'),
      backgroundColor: theme.primaryColor,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
