import 'package:flutter/material.dart';
import '../../../styles/app_style.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color iconColor;
  final double iconSize;
  final Color backgroundColor;
  final double width;
  final double height;
  final Color foregroundColor;

  CustomTextButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.iconColor,
    this.iconSize = 30.0,
    required this.backgroundColor,
    required this.foregroundColor,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),


      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: AppColor.blackColor,
                fontWeight: FontWeight.normal,
                fontSize: AppSize.s10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
