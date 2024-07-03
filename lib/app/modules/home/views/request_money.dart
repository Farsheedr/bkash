import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';


class RequestView extends GetView<HomeController> {
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
            'রিকোয়েস্ট মানি',
            style: TextStyle(
              color: AppColor.colorWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColor.bkashPurple,
        ),
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
                                  'প্রাপক ',
                                  style: TextStyle(
                                    color: AppColor.grayColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward,
                                        color: AppColor.grayLightColor,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'নাম বা নাম্বার দিন ',
                                    hintStyle: TextStyle(color: AppColor.grayLightColor),
                                  ),
                                ),

                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: 3.0,
                                ),
                                SizedBox(height: AppSize.s6,),
                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.request_page_outlined,color: AppColor.bkashPurple,size: 30,),
                                      SizedBox(width: AppSize.s6,),
                                      Text('রিসিভ এবং সেন্ড করা রিকোয়েস্ট সমূহ',
                                          style: TextStyle(color: AppColor.bkashPurple,fontSize: 16,fontWeight: FontWeight.normal)),
                                    ],

                                  ),
                                ),
                                SizedBox(height: AppSize.s6,),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: 3.0,
                                ),
                                SizedBox(height: AppSize.s6,),
                                Text('সব কন্টাক্টস এবং গ্রুপ',
                                  style: TextStyle(color:AppColor.grayLightColor),
                                ),
                                SizedBox(height: AppSize.s4,),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: 1.0,
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