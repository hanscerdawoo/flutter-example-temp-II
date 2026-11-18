import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titleButton;
  final VoidCallback onAction;
  final Color customBackgroundColor;

  const CustomButton({
    super.key,
    required this.titleButton,
    required this.onAction,
    required this.customBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    // var theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onAction,
      style: ElevatedButton.styleFrom(
        backgroundColor: customBackgroundColor,
        foregroundColor: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        fixedSize: Size(180, 45),
      ),
      child: Text(titleButton),
    );
  }
}
