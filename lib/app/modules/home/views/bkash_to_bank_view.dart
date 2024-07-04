import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/app/modules/home/widgets/offer_list.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';
import 'package:untitled/app/modules/home/widgets/suggestion_list.dart';
import 'package:untitled/app/routes/app_pages.dart';
import 'package:untitled/app/styles/app_assets.dart';

import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_icon_button.dart';

class BkashtoBankView extends GetView<HomeController> {
  // Track whether the grid is expanded or not

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
            'বিকাশ টু ব্যাংক',
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
                          return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'বিকাশ থেকে ব্যাংকে টাকা পাঠান ',
                                  style: TextStyle(
                                    color: AppColor.grayColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: 3.0,
                                ),
                                SizedBox(height: AppSize.s6,),
                                InkWell(
                                  onTap: (){
                                    Get.toNamed(AppPages.ACCOUNT);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.food_bank_outlined ,color: AppColor.bkashPurple,size: 35,),
                                      SizedBox(width: AppSize.s16,),
                                      Text('ব্যাংক অ্যাকাউন্ট' ,
                                          style: TextStyle(color: AppColor.blackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal)
                                      ),

                                    ],

                                  ),
                                ),
                                SizedBox(height: AppSize.s6,),
                                Divider(color: AppColor.lightGrayColor,
                                  thickness: 2.0,),
                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons. credit_card_outlined,color: AppColor.bkashPurple,size: 35,),
                                      SizedBox(width: AppSize.s16,),
                                      Text('ভিসা ডেবিট কার্ড',
                                          style: TextStyle(color: AppColor.blackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal)
                                      ),

                                    ],

                                  ),
                                ),


                              ]
                          );
                        }
                    )
                )
            )
        )
    );
  }
}