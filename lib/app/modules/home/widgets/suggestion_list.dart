import 'package:flutter/material.dart';

class SuggestionList extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const SuggestionList({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 150,
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,

                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
