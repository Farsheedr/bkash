import 'package:flutter/material.dart';

import '../../../styles/app_style.dart';

class OfferList extends StatelessWidget {
  final String imagePath;
  final String text;
  final String subtext;
  final VoidCallback onTap;

  const OfferList({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.subtext,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 3,
        backgroundColor: AppColor.colorWhite, // Background color of the button
        padding: EdgeInsets.only(right: 5.0), // No padding inside the button
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(10), // Rounded corners
          side: BorderSide(
            color: AppColor.lightGrayColor, // Border color
          ),
        ),
      ),

      child: Container(

        width: AppSize.s150,
        height: 175,
        // padding: EdgeInsets.all(10), // Padding inside the button
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: AppSize.s150,
              height: AppSize.s100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: AppSize.s6),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: AppColor.blackColor,
              ),
            ),
            SizedBox(height: AppSize.s6),
            Text(
              subtext,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                color: AppColor.grayLightColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
