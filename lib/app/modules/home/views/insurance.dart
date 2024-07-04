import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class InsuranceView extends GetView<HomeController> {
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
            'ইন্সুরেন্স',
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
      children: [
        Padding(
        padding: const EdgeInsets.only(top: 16.0),
          child: InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(Icons.phone_iphone_outlined,
                size: 35,
                color: AppColor.bkashPurple,),
                SizedBox(width: AppSize.s10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('প্রিমিয়াম পেমেন্ট',
                    style: TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 16
                    ),),
                    SizedBox(height: AppSize.s4,),
                    Text('যেকোনো চলতি ইন্সুরেন্সের প্রিমিয়াম দিন',
                    style: TextStyle(
                      color: AppColor.grayLightColor,
                      fontSize: 12,

                    ),),
                  ],
                ),
                Spacer(),
                Icon(Icons.chevron_right,
                color: AppColor.lightGrayColor,)

              ],

            ),


          ),


        ),
        SizedBox(
          height: AppSize.s10,
        ),
        Divider(color: AppColor.lightGrayColor,
        thickness: AppSize.s4,),
        SizedBox(height: AppSize.s10,),
        InkWell(
          onTap: (){},
          child: Row(
            children: [
              Icon(Icons.receipt_outlined,
                size: 35,
                color: AppColor.bkashPurple,),
              SizedBox(width: AppSize.s10,),
              Text('রিসিট',
                style: TextStyle(
                    color: AppColor.blackColor,
                    fontSize: 16
                ),),

              Spacer(),
              Icon(Icons.chevron_right,
                color: AppColor.lightGrayColor,),
              SizedBox(
                height: AppSize.s12,
              ),


            ],

          ),


        ),
        Divider(
          color: AppColor.lightGrayColor,
          thickness: AppSize.s8,
        ),
        SizedBox(height: AppSize.s10,),
        InkWell(
          onTap: (){},
          child: Row(
            children: [
              Icon(Icons.video_library_outlined ,
                size: 35,
                color: AppColor.bkashPurple,),
              SizedBox(width: AppSize.s10,),
              Text('দেখুন কিভাবে প্রিমিয়াম দিবেন',
                style: TextStyle(
                    color: AppColor.blackColor,
                    fontSize: 16
                ),),




            ],

          ),


        ),
        SizedBox(
          height: AppSize.s6,
        ),
        Divider(color: AppColor.lightGrayColor,
            thickness: AppSize.s2,),
        InkWell(
          onTap: (){},
          child: Row(
            children: [
              Icon(Icons.question_mark_outlined,
                size: 35,
                color: AppColor.bkashPurple,),
              SizedBox(width: AppSize.s10,),
              Text('সচরাচর জিজ্ঞাসা',
                style: TextStyle(
                    color: AppColor.blackColor,
                    fontSize: 16
                ),),

              Spacer(),
              Icon(Icons.chevron_right,
                color: AppColor.lightGrayColor,),
              SizedBox(
                height: AppSize.s12,
              ),


            ],

          ),


        ),




      ],
    );



    }
    )
    )
    )
    )
    );
  }
}
