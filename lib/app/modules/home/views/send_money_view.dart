import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class SendMoneyView extends GetView<HomeController> {
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
          'সেন্ড মানি ',
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
                      'প্রাপক',
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
                    Container(
                      width: double.infinity,
                      child: Divider(
                        color: AppColor.lightGrayColor, // Customize the color
                        thickness: 3.0, // Customize the thickness
                      ),
                    ),
                    SizedBox(height: AppSize.s10,),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.change_circle_outlined,color: AppColor.bkashPurple,size: 30,),
                          SizedBox(width: AppSize.s6,),
                          Text('আপনার অটো পে(০)',
                          style: TextStyle(color: AppColor.bkashPurple,fontSize: 16,fontWeight: FontWeight.bold)),
                        ],
                        
                      ),
                    ),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness:1.0 ,
                    ),
                    SizedBox(height: AppSize.s10),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.bookmark_add, color: AppColor.bkashPurple,size: 30,),
                          SizedBox(width: AppSize.s6,),
                          Text("ফ্রী সেন্ড মানি'র জন্য ট্যাপ করুন ",
                          style: TextStyle(color: AppColor.bkashPurple,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                    SizedBox(height: AppSize.s6,),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness: 3.0,
                    ),
                    SizedBox(height: AppSize.s6,),
                    Text('সব কনট্যাকটস এবং গ্রুপ',
                    style: TextStyle(color: AppColor.grayLightColor,fontSize: 16),),
                    SizedBox(height: AppSize.s6,),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness: 3.0,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColor.bkashPurplelight,
                            child: Icon(Icons.group,color: AppColor.bkashPurple,size: 30,),
                          ),
                          SizedBox(width: AppSize.s10,),
                          Text('গ্রুপ সেন্ড মানি',
                          style: TextStyle(color: AppColor.bkashPurple,fontSize: 16,fontWeight: FontWeight.bold),)


                        ],
                      ),
                    )
                    
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
