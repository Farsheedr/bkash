import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../styles/app_style.dart';
import '../models/school_list.dart'; // Adjust the import path as needed

class BillListView extends StatelessWidget {
  final bool showList;

  const BillListView({
    Key? key,
    required this.showList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (showList) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: schools.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                schools[index].assetImage,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                schools[index].name,
                style: TextStyle(
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                schools[index].type,
                style: TextStyle(color: AppColor.grayColor),
              ),
              onTap: () {
                // Handle onTap
              },
            );
          },
        );
      } else {
        return SizedBox.shrink();
      }
    });
  }
}
