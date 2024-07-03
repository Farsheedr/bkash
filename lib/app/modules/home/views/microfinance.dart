import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/financeList.dart';
import '../models/school_list.dart';

class MicrofinanceView extends GetView<HomeController> {
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
            'মাইক্রোফাইনান্স ',
            style: TextStyle(color: AppColor.colorWhite,fontWeight: FontWeight.bold),
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
    'প্রতিষ্ঠান খুঁজুন',
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
    hintText: 'প্রতিষ্ঠানের নাম লিখুন ',
    hintStyle: TextStyle(color: AppColor.grayLightColor),
    ),
    ),
      Column(
      children: [
      Padding(padding: EdgeInsets.only(top: 15.0)),
      InkWell(
      onTap: () {},
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Icon(
      Icons.receipt,
      color: AppColor.bkashPurple,
      size: 30,
      ),
      SizedBox(width: 10.0),
      Text(
      'রিসিট ',
      style: TextStyle(
      color: AppColor.bkashPurple,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      ),
      ),
      ],
      ),
      ),
        SizedBox(height: AppSize.s4,),
        Divider(color: AppColor.lightGrayColor,
        thickness: AppSize.s2,),
        SizedBox(height: AppSize.s4,),
        Align(
            alignment: Alignment.centerLeft,
            child: Text('প্রতিষ্ঠানের তালিকা')),
        SizedBox(height: AppSize.s4,),
        Divider(color: AppColor.lightGrayColor,
        thickness: AppSize.s2,),
    ListView.builder(
    shrinkWrap: true,
    itemCount: finance.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: Image.asset(
          finance[index].assetImage,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          finance[index].name,
          style: TextStyle(
            color: AppColor.blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),

      );
    }
    )
    ]

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