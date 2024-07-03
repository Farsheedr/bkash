import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/models/remittanceList.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';


class RemittanceView extends GetView<HomeController> {
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
            'রেমিটেন্স',
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
                                  'প্রতিষ্ঠান খুঁজুন ',
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
                                    hintText: 'প্রতিষ্ঠানের নাম দিন ',
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
                                      Icon(Icons.language,color: AppColor.bkashPurple,size: 30,),
                                      SizedBox(width: AppSize.s6,),
                                      Text('দেশ অনুযায়ী প্রতিষ্ঠান খুঁজুন  ',
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
                                InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.request_page_outlined,color: AppColor.bkashPurple,size: 30,),
                                      SizedBox(width: AppSize.s6,),
                                      Text('রিসিট  ',
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
                                Text('সব প্রতিষ্ঠান ',
                                  style: TextStyle(color:AppColor.grayLightColor),
                                ),
                                SizedBox(height: AppSize.s4,),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: 1.0,
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: remittance.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        leading: Image.asset(
                                          remittance[index].assetImage,
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Text(
                                          remittance[index].name,
                                          style: TextStyle(
                                            color: AppColor.blackColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onTap: () {
                                          // Handle onTap
                                        },

                                      );
                                    }
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