import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/donationList.dart';
import '../models/school_list.dart';

class DonationView extends GetView<HomeController> {
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
            ' ডোনেশন  ',
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
    Text('সুবিধাবঞ্চিত মানুষকে সহায়তা করতে অনুদান বিকাশ করুন '),
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
      ListView.builder(
          shrinkWrap: true,
          itemCount: donation.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                donation[index].assetImage,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                donation[index].name,
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
    )
    );
    }
    )
    )
    )
    )
    );
    }
  }