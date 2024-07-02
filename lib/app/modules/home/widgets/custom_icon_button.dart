import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color? iconColor;


  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon,color: iconColor),
          iconSize: 35,

          onPressed: onPressed,
        ),
        SizedBox(height: 4.0), // Adjust the space between icon and label
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
