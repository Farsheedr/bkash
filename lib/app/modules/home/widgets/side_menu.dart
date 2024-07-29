import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.only(left: AppSize.s10),

        children: [
          Padding(padding: EdgeInsets.only(top: AppSize.s16)),

          Text(
            'বিকাশ মেনু ',
            style: TextStyle(
              color: AppColor.bkashPurple,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: AppSize.s28,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
                onPressed: (){},

                child:

                Text('English'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(AppSize.s24, AppSize.s42),
                elevation: 0,
                foregroundColor: AppColor.bkashPurple,
                side: BorderSide(color: AppColor.bkashPurple)

              ),

            ),
          ),
          SizedBox(height: AppSize.s20,),
          ListTile(
            leading: Icon(Icons.home_outlined,
            color: AppColor.bkashPurple,
            size: AppSize.s28,),
            title: Text('হোম'),
            onTap: () {
              Get.toNamed(AppPages.INITIAL);
            },
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.graphic_eq_outlined ,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text('স্টেটমেন্ট '),
            onTap: () {
              Get.toNamed(AppPages.STATEMENT);
            },
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.warning_amber_outlined,
                color: AppColor.bkashPurple),
            title: Text('লিমিট '),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.discount_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text('কুপন '),
            onTap: () {
              Get.toNamed(AppPages.COUPON);
            },
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.info_outline,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text('তথ্য হালানাগাদ'),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.book_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text(' নমিনির জন্য তথ্য হালনাগাদ'),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.group_add_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text('রেফার বিকাশ অ্যাপ'),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.navigation_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text(' বিকাশ ম্যাপ'),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.compass_calibration_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text(' বিকাশ নিয়ে জানুন'),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.settings,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text('সেটিংস্‌'),
            onTap: () {
              Get.toNamed(AppPages.SETTINGS);
            },
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.change_circle_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text(' অটো পে'),
            onTap: () {},
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.support_agent_outlined,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text(' সাপোর্ট '),
            onTap: () {
              Get.toNamed(AppPages.SUPPORT);
            },
          ),
          SizedBox(height: AppSize.s10,),
          ListTile(
            leading: Icon(Icons.logout,
                color: AppColor.bkashPurple,
                size: AppSize.s28),
            title: Text('লগ আউট '),
            onTap: () {
              Get.toNamed(AppPages.LOGIN);
            },
          ),
        ],
      ),
    );
  }
}
