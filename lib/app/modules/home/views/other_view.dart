import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/styles/app_assets.dart';

import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class OtherView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
            onPressed: () {},
          ),
          title: Text(
            'এডুকেশন ফি',
            style: TextStyle(color: AppColor.colorWhite, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: AppColor.bkashPurple,
        ),
      body: Padding(padding: EdgeInsets.all(5.0),
      child: Container(
        height: Get.height,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.colorWhite
        ),
        child: SingleChildScrollView(
          child: GetBuilder<HomeController>(
            builder: (controller){
              return Row(
                mainAxisSize: MainAxisSize.min ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('প্রাপক',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: AppSize.s10,),
                  Image.asset(AppAssets.eduLogo,
                  height: 40.0,
                  width: 40.0,
                  ),
                  SizedBox(width: AppSize.s10,),
                  Text('Eduman')
                ],
              );
            },
          ),
        ),
      ),),
    );
  }
}