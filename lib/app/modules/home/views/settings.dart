import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class SettingsView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
            onPressed: () {
              Get.toNamed(AppPages.INITIAL);
            },
          ),
          title: Text(
            'সেটিংস্‌   ',
            style: TextStyle(
              color: AppColor.colorWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColor.bkashPurple,
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
        ),
        endDrawer: SideMenu(),
        endDrawerEnableOpenDragGesture: true,
        body: Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
                height: Get.height,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.colorWhite,
                ),
                child: SingleChildScrollView(
                    child: GetBuilder<HomeController>(
                        builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.drive_file_rename_outline_outlined,
                                      color: AppColor.bkashPurple,),
                                      SizedBox(
                                        width: AppSize.s8,
                                      ),
                                      Text('লাইভ চ্যাট',
                                        style: TextStyle(
                                          color: AppColor.bkashPurple,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward ,color: AppColor.bkashPurple,size: 30,)

                                    ],
                                  ),
                                ),
                                SizedBox(height: AppSize.s4,),
                                Divider(color: AppColor.lightGrayColor,
                                  thickness: AppSize.s2,),
                                SizedBox(height: AppSize.s4,),
                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.picture_in_picture,
                                          color: AppColor.bkashPurple,
                                      ),
                                      SizedBox(
                                        width: AppSize.s8,
                                      ),

                                      Text(' ছবি পরিবর্তন করুন ',
                                        style: TextStyle(
                                          color: AppColor.bkashPurple,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward,color: AppColor.bkashPurple,size: 30,)

                                    ],
                                  ),
                                ),
                                SizedBox(height: AppSize.s4,),
                                Divider(color: AppColor.lightGrayColor,
                                  thickness: AppSize.s2,),
                                SizedBox(height: AppSize.s4,),
                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_search_outlined,
                                        color: AppColor.bkashPurple,
                                      ),
                                      SizedBox(
                                        width: AppSize.s8,
                                      ),
                                      Text('অ্যাকাউন্ট ম্যানেজ ',
                                        style: TextStyle(
                                          color: AppColor.bkashPurple,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward,color: AppColor.bkashPurple,size: 30,)

                                    ],
                                  ),
                                ),
                              ],


                            ),

                          );

                        })
                )
            )
        )
    );

  }
}