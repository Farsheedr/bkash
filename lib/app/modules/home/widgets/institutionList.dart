import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../styles/app_style.dart';

class InstitutionList extends StatelessWidget {
  final List<dynamic> institutions;
  // final bool isVisible;

  InstitutionList({required this.institutions, });

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: institutions.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            institutions[index].assetImage,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(
            institutions[index].name,
            style: TextStyle(
              color: AppColor.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            institutions[index].type,
            style: TextStyle(color: AppColor.grayColor),
          ),
          onTap: () {
            // Handle onTap
          },
        );
      },
    );
  }
}
