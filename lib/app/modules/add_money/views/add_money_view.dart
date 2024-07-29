import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/app/modules/add_money/controllers/add_money_controller.dart';
import 'package:untitled/app/modules/home/widgets/offer_list.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';
import 'package:untitled/app/modules/home/widgets/suggestion_list.dart';
import 'package:untitled/app/routes/app_pages.dart';
import 'package:untitled/app/styles/app_assets.dart';

import '../../../styles/app_style.dart';




class AddMoneyView extends GetView<AddMoneyController> {
  const AddMoneyView({Key? key}) : super(key: key);



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
            'অ্যাড মানি',
            style: TextStyle(color: AppColor.colorWhite,fontWeight: FontWeight.bold),
          ),

          centerTitle: true,
          backgroundColor: AppColor.bkashPurple,
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],


        ),
        endDrawer: SideMenu(),
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
                    child: GetBuilder<AddMoneyController>(
                        builder: (controller) {
                          return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'আপনার অ্যাড মানি করার মাধ্যম বাছাই করুন',
                                  style: TextStyle(
                                    color: AppColor.grayColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: 3.0,
                                ),
                                SizedBox(height: AppSize.s6,),
                                InkWell(
                                  onTap: (){
                                    Get.toNamed(AppPages.ACCOUNT);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.food_bank_outlined ,color: AppColor.bkashPurple,size: 35,),
                                      SizedBox(width: AppSize.s16,),
                                      Text('ব্যাংক টু বিকাশ',
                                          style: TextStyle(color: AppColor.blackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal)
                                      ),

                                    ],

                                  ),
                                ),
                                SizedBox(height: AppSize.s6,),
                                Divider(color: AppColor.lightGrayColor,
                                  thickness: 2.0,),
                                InkWell(
                                  onTap: (){
                                    Get.toNamed(AppPages.CARD);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons. credit_card_outlined,color: AppColor.bkashPurple,size: 35,),
                                      SizedBox(width: AppSize.s16,),
                                      Text('কার্ড টু বিকাশ',
                                          style: TextStyle(color: AppColor.blackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal)
                                      ),

                                    ],

                                  ),
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