import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class EducationView extends GetView<HomeController> {
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
          'এডুকেশন ফি',
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
                        hintText: 'প্রতিষ্ঠানের নাম বা ধরন দিন',
                        hintStyle: TextStyle(color: AppColor.grayLightColor),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: 8.0,
                      color: AppColor.lightGrayColor,
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
                                'রিসিট দেখুন',
                                style: TextStyle(
                                  color: AppColor.bkashPurple,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6),
                        Container(
                          width: double.infinity,
                          height: 4.0,
                          color: AppColor.lightGrayColor,
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.only(right: 275),
                          child: Column(
                            children: [
                              Text(
                                'ঘুরে দেখুন',
                                style: TextStyle(
                                  color: AppColor.grayColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 4.0,
                          color: AppColor.lightGrayColor,
                        ),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(
                              minimumSize: Size(100, 100),
                              shape: RoundedRectangleBorder(),
                              backgroundColor: AppColor.colorWhite,
                              elevation: 0.5,
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.book_outlined,color: AppColor.appGreen,),
                                SizedBox(width: 5,),
                                Text('ঈ-লারনিং',style: TextStyle(
                                  color: AppColor.blackColor,
                                ),)
                              ],
                            ),),
                            ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(
                              minimumSize: Size(100, 100),
                              shape: RoundedRectangleBorder(),
                              backgroundColor: AppColor.colorWhite,
                              elevation: 0.5,
                            ),
                              child: Row(
                                children: [
                                  Icon(Icons.lightbulb_outline,color: AppColor.appGreen,),
                                  SizedBox(width: 5,),
                                  Text('কুইজ',style: TextStyle(
                                    color: AppColor.blackColor,
                                  ),)
                                ],
                              ),),


                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 4.0,
                          color: AppColor.lightGrayColor,
                        ),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.only(right: 175),
                          child: Column(
                            children: [
                              Text(
                                'প্রতিষ্ঠান এবং ফী এর ধরন',
                                style: TextStyle(
                                  color: AppColor.grayColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 4.0,
                          color: AppColor.lightGrayColor,
                        ),

                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                controller.toggleSchoolList();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 100),
                                shape: RoundedRectangleBorder(),
                                backgroundColor: AppColor.colorWhite,
                                elevation: 0.5,
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.history_edu,
                                    color: AppColor.bkashPurple,
                                    size: 40,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "স্কুল",
                                    style: TextStyle(color: AppColor.blackColor),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                controller.toggleCollegeList();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 100),
                                shape: RoundedRectangleBorder(),
                                backgroundColor: AppColor.colorWhite,
                                elevation: 0.5,
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.house_outlined,
                                    color: AppColor.bkashPurple,
                                    size: 40,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "কলেজ",
                                    style: TextStyle(color: AppColor.blackColor),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                controller.toggleUniversityList();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 100),
                                shape: RoundedRectangleBorder(),
                                backgroundColor: AppColor.colorWhite,
                                elevation: 0.5,
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.school_outlined,
                                    color: AppColor.bkashPurple,
                                    size: 40,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "ইউনিভার্সিটি",
                                    style: TextStyle(color: AppColor.blackColor),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                controller.toggleTrainingList();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 100),
                                shape: RoundedRectangleBorder(),
                                backgroundColor: AppColor.colorWhite,
                                elevation: 0.5,
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.people_outline,
                                    color: AppColor.bkashPurple,
                                    size: 40,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "ট্রেনিং",
                                    style: TextStyle(color: AppColor.blackColor),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                controller.toggleOtherList();
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 100),
                                shape: RoundedRectangleBorder(),
                                backgroundColor: AppColor.colorWhite,
                                elevation: 0.5,
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.menu_book,
                                    color: AppColor.bkashPurple,
                                    size: 40,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "অন্যান্য",
                                    style: TextStyle(color: AppColor.blackColor),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 2.0,
                          color: AppColor.lightGrayColor,
                        ),
                        SizedBox(height: 8),
                        Obx(() {

                          if (controller.showSchoolList.value) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: schools.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Image.asset(
                                    schools[index].assetImage,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    schools[index].name,
                                    style: TextStyle(
                                      color: AppColor.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    schools[index].type,
                                    style: TextStyle(color: AppColor.grayColor),
                                  ),
                                  onTap: () {
                                    // Handle onTap
                                  },
                                );
                              },
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),


                        Obx(() {

                          if (controller.showCollegeList.value) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: college.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Image.asset(
                                    college[index].assetImage,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    college[index].name,
                                    style: TextStyle(
                                      color: AppColor.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    college[index].type,
                                    style: TextStyle(color: AppColor.grayColor),
                                  ),
                                  onTap: () {
                                    // Handle onTap
                                  },
                                );
                              },
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),
                        Obx(() {

                          if (controller.showUniversityList.value) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: university.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Image.asset(
                                    university[index].assetImage,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    university[index].name,
                                    style: TextStyle(
                                      color: AppColor.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    university[index].type,
                                    style: TextStyle(color: AppColor.grayColor),
                                  ),
                                  onTap: () {
                                    // Handle onTap
                                  },
                                );
                              },
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),
                        Obx(() {

                          if (controller.showTrainingList.value) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: training.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Image.asset(
                                    training[index].assetImage,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    training[index].name,
                                    style: TextStyle(
                                      color: AppColor.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    training[index].type,
                                    style: TextStyle(color: AppColor.grayColor),
                                  ),
                                  onTap: () {
                                    // Handle onTap
                                  },
                                );
                              },
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),
                        Obx(() {

                          if (controller.showOtherList.value) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: other.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Image.asset(
                                    other[index].assetImage,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    other[index].name,
                                    style: TextStyle(
                                      color: AppColor.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    other[index].type,
                                    style: TextStyle(color: AppColor.grayColor),
                                  ),
                                  onTap: () {
                                    // Handle onTap
                                  },
                                );
                              },
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),
                      ],
                    ),
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
