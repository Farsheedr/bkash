import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/styles/app_style.dart';

class SideModalSheet extends StatelessWidget {
  final Function(String) onSelected;

  SideModalSheet({required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width, // Adjust width as needed
      color: Colors.white, // Background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'বিকাশ মেনু',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Divider(), // Divider line
          _buildMenuItem(context,'হোম', Icons.home, AppColor.bkashPurple),
          _buildMenuItem(context,'স', Icons.auto_graph_outlined,AppColor.bkashPurple),
          _buildMenuItem(context,'লিমিট', Icons.warning,AppColor.bkashPurple),
          _buildMenuItem(context,' কুপন ', Icons.discount_outlined,AppColor.bkashPurple),
          _buildMenuItem(context,'তথ্য হালানাগাদ', Icons.info_outline,AppColor.bkashPurple),
          _buildMenuItem(context,'নমিনির তথ্য হালনাগাদ', Icons.book_outlined ,AppColor.bkashPurple),
          _buildMenuItem(context,'রেফার বিকাশ অ্যাপ', Icons.group_add_outlined ,AppColor.bkashPurple),
          _buildMenuItem(context,'বিকাশ ম্যাপ ', Icons.navigation_outlined,AppColor.bkashPurple),
          _buildMenuItem(context,'বিকাশ নিয়ে জানুন ', Icons.compass_calibration,AppColor.bkashPurple),
          _buildMenuItem(context,'সেটিংস্‌', Icons.settings_applications_outlined,AppColor.bkashPurple),
          _buildMenuItem(context,' অটো পে', Icons.change_circle_outlined,AppColor.bkashPurple),
          _buildMenuItem(context,'সাপোর্ট ', Icons.support_agent_outlined ,AppColor.bkashPurple),
          Divider(), // Divider line
          _buildMenuItem(context,'লগ আউট', Icons.logout,AppColor.bkashPurple),
        ],
      ),
    );
  }

  Widget _buildMenuItem(context, String text, IconData icon,Color iconColor) {
    return ListTile(
      leading: Icon(icon,color:iconColor),
      title: Text(text),
      onTap: () {
        // onSelected(text);
        // Navigator.pop(context); // Close the side modal sheet on item selection
      },
    );
  }
}
