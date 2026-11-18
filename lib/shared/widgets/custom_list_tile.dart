import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget customLeading;
  final VoidCallback action;
  const CustomListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.customLeading,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: theme.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(
                color: theme.primaryColorDark,
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),
            leading: customLeading,
            trailing: IconButton(
              onPressed: action,
              icon: Icon(Icons.arrow_forward),
            ),
          ),
          Divider(color: theme.primaryColor),
        ],
      ),
    );
  }
}
