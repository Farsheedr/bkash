import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class TicketView extends GetView<HomeController> {
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
            ' টিকেট   ',
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
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ঘরে বসেই বিভিন্ন সেবার টিকেট কিনুন, সুবিধামতো '),
                                SizedBox(
                                  height: AppSize.s4,
                                ),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: AppSize.s2,
                                ),
                                SizedBox(
                                  height:AppSize.s4 ,
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.flight,color: AppColor.bkashPurple,size: 30,),
                                      SizedBox(width: AppSize.s12,),
                                      Text('বিমান ',
                                        style: TextStyle(

                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),


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
                                      Icon(Icons.directions_bus,color: AppColor.bkashPurple,size: 30,),
                                      SizedBox(width: AppSize.s12,),
                                      Text('বাস  ',
                                        style: TextStyle(

                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),


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
                                      Icon(Icons.directions_boat_filled_rounded,color: AppColor.bkashPurple,size: 30,),
                                      SizedBox(width: AppSize.s12,),
                                      Text('লঞ্চ',
                                        style: TextStyle(

                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),


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