import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/bankList.dart';
import '../models/billList.dart';
import '../models/school_list.dart';

class BankAccountView extends StatelessWidget {
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
                'বিকাশ টু ব্যাংক',
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
    ' ব্যাংকের নাম টাইপ করে খুঁজুন ',
    style: TextStyle(
    color: AppColor.grayColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
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
    hintText: 'ব্যাংকের নাম লিখুন  ',
    hintStyle: TextStyle(color: AppColor.grayLightColor),
    ),
    ),
    SizedBox(height: AppSize.s6,),
    Divider(
    color: AppColor.lightGrayColor,
    thickness: AppSize.s4,
    ),
      SizedBox(height: AppSize.s6,),
      Text('সেভ করে রাখা ব্যাংক '),
      SizedBox(height: AppSize.s6,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: AppSize.s2,
      ),
      SizedBox(height: AppSize.s4,),
      Text('সব ব্যাংক '),
      SizedBox(height: AppSize.s4,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: AppSize.s2,
      ),

        ListView.builder(
      shrinkWrap: true,
      itemCount: bank.length,
      itemBuilder: (context, index) {
      return ListTile(
      leading: Image.asset(
      bank[index].assetImage,
      width: 50,
      height: 50,
      fit: BoxFit.cover,
      ),
      title: Text(
      bank[index].name,
      style: TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      ),
      ),

      onTap: () {
      // Handle onTap
      },
      );
      },
        )
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