import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class SavingsView extends GetView<HomeController> {
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
            'সেভিংস',
            style: TextStyle(color: AppColor.colorWhite,fontWeight: FontWeight.bold),
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
              padding: const EdgeInsets.only(top: 16.0),
              child: Align(

                alignment: Alignment.center,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.savings,
                    size: 60,
                    color: AppColor.bkashPurple,),
                    SizedBox(height: AppSize.s6,),
                    Text('আপনার সেভিংস প্লান তৈরি করুন',
                    style: TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14
                    ),),
                    SizedBox(height: AppSize.s6,),
                    Container(
                      width: Get.width/1.75,
                      child: ElevatedButton(onPressed: (){},
                          child: Text(
                            'নতুন সেভিংস খুলুন',
                            style: TextStyle(
                              color: AppColor.colorWhite
                            ),
                          ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100,50),
                        backgroundColor: AppColor.bkashPurple
                      ),),

                    ),
                    SizedBox(
                      height: AppSize.s6,
                    ),
                    Divider(color: AppColor.lightGrayColor,
                    thickness: 8.0,),
                    SizedBox(
                      height: AppSize.s6,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(


                        children: [
                          Icon(Icons.receipt_long_outlined,
                          color: AppColor.bkashPurple,
                          size: 40,),
                          SizedBox(width: AppSize.s16,),
                          Text('ই-টিন ও আয়কর সনদ',
                          style: TextStyle(
                            color: AppColor.blackColor,
                            fontSize: 16,
                          ),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right,
                          color: AppColor.grayLightColor,),

                          

                        ],

                      ),
                    ),
                    SizedBox(
                      height: AppSize.s6,
                    ),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness: 3.0,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(


                        children: [
                          Icon(Icons.question_answer_outlined,
                            color: AppColor.bkashPurple,
                            size: 40,),
                          SizedBox(width: AppSize.s16,),
                          Text('শর্তাবলি ও সাধারণ জিজ্ঞাসা',
                            style: TextStyle(
                              color: AppColor.blackColor,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right,
                            color: AppColor.grayLightColor,),



                        ],

                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    )
        )
    );
  }
}

