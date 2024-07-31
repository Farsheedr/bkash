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




class CardView extends GetView<AddMoneyController> {
  const CardView({Key? key}) : super(key: key);



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
    'আপনাার কার্ড নাম্বার দিন ',
    style: TextStyle(
    color: AppColor.grayColor,
    fontSize: AppSize.s12,
    fontWeight: FontWeight.normal,
    ),
    ),
    SizedBox(height: AppSize.s4,),
    TextFormField(
      controller: controller.cardController,
      decoration: InputDecoration(
        hintText: 'আপনার কার্ড নাম্বার দিন',
        hintStyle: TextStyle(fontSize: AppSize.s10),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      onChanged:  (String? value) {
      controller.cardNo.value=value!;
      },
    ),
    SizedBox(
      height: AppSize.s4,
    ),
    Divider(
    color: AppColor.lightGrayColor,
    thickness: AppSize.s4,
    ),
      SizedBox(
        height: AppSize.s4,
      ),
      Text('কার্ড এর এক্সপাইরি ডেট দিন'),
      TextFormField(
        controller: controller.expiryController,
        decoration: InputDecoration(
          hintText: 'কার্ড এর এক্সপাইরি ডেট দিন',
          hintStyle: TextStyle(
            fontSize: AppSize.s10
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onChanged:  (String? value) {
          controller.expiryDate.value=value!;
        },
      ),
      SizedBox(height: AppSize.s4,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: AppSize.s4,
      ),
      SizedBox(
        height: AppSize.s4,
      ),
      Text('কার্ড এর হোল্ডার এর নাম দিন'),
      TextFormField(
        controller: controller.holderController,
        decoration: InputDecoration(
          hintText: 'কার্ড এর হোল্ডার এর নাম দিন',
          hintStyle: TextStyle(
              fontSize: AppSize.s10
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onChanged:  (String? value) {
          controller.cardHolder.value=value!;
        },
      ),
      SizedBox(height: AppSize.s4,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: AppSize.s4,
      ),
      SizedBox(
        height: AppSize.s4,
      ),
      Text('আপনার কার্ডের প্রাইভেট নাম্বার দিন'),
      TextFormField(
        controller: controller.privateController,
        decoration: InputDecoration(
          hintText: 'আপনার কার্ডের প্রাইভেট নাম্বার দিন',
          hintStyle: TextStyle(
              fontSize: AppSize.s10
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        onChanged:  (String? value) {
          controller.privateNo.value=value!;
        },
      ),
      SizedBox(height: AppSize.s20,),
      Center(child: ElevatedButton(onPressed: (){
        controller.saveCard();
      }, child: Text('এগিয়ে জান',
        style: TextStyle(color: AppColor.colorWhite),
      ),
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.bkashPurple),
      ))
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