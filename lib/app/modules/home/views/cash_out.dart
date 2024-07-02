import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class CashoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
            onPressed: () {
              Get.toNamed(AppPages.INITIAL);
            },
          ),
          title: Text(
            'ক্যাশ আউট ',
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
            child: Column(
              children: [
                TabBar(
                  indicatorColor: AppColor.bkashPurple,
                  labelColor: AppColor.bkashPurple,

                  tabs: [
                    Tab(text: 'এজেন্ট ',),
                    Tab(text: 'এটিএম '),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Content for the first tab (Agent)
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

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
                                hintText: 'এজেন্টের নাম বা নাম্বার দিন ',
                                hintStyle: TextStyle(color: AppColor.grayLightColor),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Divider(
                                color: AppColor.grayLightColor,
                                thickness: 1.0,
                              ),
                            ),
                            SizedBox(height: 20),
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
                            SizedBox(height: AppSize.s10,),
                            Divider(
                              color: AppColor.grayLightColor,
                            ),
                            SizedBox(height: AppSize.s6,),
                            Text('সেভ করে রাখা এজেন্ট তালিকা',
                              style: TextStyle(
                                  color: AppColor.grayLightColor,fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                      // Content for the second tab (ATM)
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(


                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('লক্ষ্য করুন',style: TextStyle(
                                  color: AppColor.grayLightColor,
                                  fontSize: 16,
                              fontWeight: FontWeight.bold
                              ),
                              ),
                              SizedBox(height: AppSize.s4,),
                              Text('বিকাশ পিন দিয়ে সিকিউরিটি কোড নিন। কোডটি \n '
                                  'এটিএম-এ ব্যাবহার করুন ৫ মিনিটের মধ্যে',style: TextStyle(
                                color: AppColor.blackColor
                              ),),
                              SizedBox(
                                height: AppSize.s4,
                              ),
                              Divider(
                                color: AppColor.lightGrayColor,
                                thickness: 3.0,

                              ),
                              SizedBox(height: AppSize.s6,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.book_rounded,
                                          color: AppColor.bkashPurple,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          'ক্যাশ আউটের \n ধাপসমূহ',
                                          style: TextStyle(
                                            color: AppColor.bkashPurple,
                                            fontSize: 15,

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: AppColor.blackColor,
                                    thickness: 2.0,
                                    width: 20,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.help_outline,
                                          color: AppColor.bkashPurple,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          'পার্টনার \n ব্যাংকসমূহ ',
                                          style: TextStyle(
                                            color: AppColor.bkashPurple,
                                            fontSize: 15,

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: AppSize.s6
                              ),
                              Divider(
                                color: AppColor.lightGrayColor,
                                thickness: 3.0,
                              ),
                              SizedBox(
                                height: AppSize.s6,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text('ব্যাবহারযোগ্য ব্যালান্স : ',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))

                            ],

                          ),
                        ),

                      )


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
