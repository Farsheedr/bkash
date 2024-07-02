import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class PaymentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
            onPressed: () {
              Get.toNamed(AppPages.INITIAL);
            },
          ),
          title: Text(
            'পেমেন্ট',
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
    fontSize: 12,
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
    hintText: 'মার্চেন্টের নাম বা নাম্বার দিন  ',
    hintStyle: TextStyle(color: AppColor.grayLightColor),
    ),
    ),
      SizedBox(height: AppSize.s6,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: 2.0,
      ),
      SizedBox(height: AppSize.s6,),
      Align(
        alignment: Alignment.center,
        child: Container(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.colorWhite,
                foregroundColor: AppColor.bkashPurple,// Set button background color to transparent
                elevation: 0,
                side: BorderSide(
                    color: AppColor.bkashPurple
                )

            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, // Ensure the row only takes the minimum necessary space
              children: [
                Icon(Icons.qr_code, color: AppColor.bkashPurple),
                SizedBox(width: 8), // Adjust spacing between icon and text
                Text(
                  'QR কোড স্ক্যান করতে ট্যাপ করুন',
                  style: TextStyle(color: AppColor.bkashPurple),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: AppSize.s6,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: 2.0,
      ),
      SizedBox(height: AppSize.s6,),
      Align(
          alignment: Alignment.center,
      child: Text('সেভ করে রাখা এজেন্টের তালিকা',
      style: TextStyle(
        color: AppColor.grayLightColor
      ),
      )
        ,)
    ]
    );
    }
    )
    )
    )
        )
    )
    );
    }
}