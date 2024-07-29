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




class CardtoBkashView extends GetView<AddMoneyController> {
  const CardtoBkashView({Key? key}) : super(key: key);



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
            'কার্ড টু বিকাশ ',
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
                                  'আপনার কার্ডের ধরন বেছে নিন',
                                  style: TextStyle(
                                    color: AppColor.grayColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: AppSize.s4,),
                                Divider(
                                  color: AppColor.lightGrayColor,
                                  thickness: AppSize.s2,
                                ),

                                Obx(() {
                                  if (controller.isLoading.value) {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }

                                  if (controller.cardList.isEmpty) {
                                    return Center(
                                      child: Text('No banks available.'),
                                    );
                                  }

                                  return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: controller.cardList.length,
                                    itemBuilder: (context, index) {
                                      final bank = controller.cardList[index];
                                      return ListTile(
                                        title: Text(bank.bankName),

                                        onTap: () {
                                          // Handle bank selection
                                        },
                                      );
                                    },
                                  );
                                }),
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