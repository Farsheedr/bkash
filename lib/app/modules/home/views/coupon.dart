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

class CouponView extends GetView<HomeController> {
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
            'কুপন ',
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
            InkWell(
              onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.videocam_outlined,
                  color: AppColor.bkashPurple,),
                  SizedBox(width: AppSize.s6,),
                  Text('দেখুন কিভাবে কুপন ব্যবহার করবেন'),

                  Spacer(),
                  Icon(Icons.chevron_right_outlined,
                  color: AppColor.grayLightColor,)


                ],
              ),
            ),
            SizedBox(height: AppSize.s6,),
            Divider(color: AppColor.lightGrayColor,
            thickness: AppSize.s4,),
            SizedBox(height: AppSize.s4,),
            Text('সব কুপন',
            style: TextStyle(
              color: AppColor.grayLightColor,

            ),),
            SizedBox(
              height: AppSize.s4,
            ),
            Divider(
              color: AppColor.lightGrayColor,
              thickness: AppSize.s2,
            ),
            SizedBox(
              height: AppSize.s4,
            ),
      Row(
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(30),// Adjust the radius as needed
          child: Container(
            width: Get.size.width/2,
            padding: EdgeInsets.symmetric(horizontal: AppSize.s20),
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.grayLightColor,width: AppSize.s2)
            ),
            child: TextFormField(
            decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
            hintText: 'কুপন কোড লিখুন ',
            border: InputBorder.none, // Remove default border
            ),
            ),
          )
          ),
          SizedBox(width: AppSize.s6,),
          ElevatedButton(onPressed: (){}, child: Text('যোগ করুন',
          style: TextStyle(
            color: AppColor.colorWhite
          ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.grayColor,
            foregroundColor: AppColor.bkashPurple,
          ))
        ],
      )
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