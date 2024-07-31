import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/models/bankList.dart';
import '../../home/models/billList.dart';
import '../../home/models/school_list.dart';
import '../controllers/add_money_controller.dart';

class SourceBankView extends GetView<AddMoneyController> {
  const SourceBankView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return(
        Scaffold(
            backgroundColor: AppColor.bgRedWhite,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
                onPressed: () {
                  Get.toNamed(AppPages.BANK);
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
            endDrawerEnableOpenDragGesture: true,
            body: Padding(
            padding: EdgeInsets.all(5.0),
        child: Container(
        height: Get.height,
        width: Get.width,
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
            'ব্যাংক একাউনট যোগ করুন   ',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: AppSize.s4,),
          Divider(
            color: AppColor.grayLightColor,
            thickness: AppSize.s4,
          ),
          Container(
            child: Obx(() {
              return Text(
                  '${controller.selectedBankName}'
              );
            }
            ),
          ),
          SizedBox(height: AppSize.s4,),
          Divider(color: AppColor.lightGrayColor,
            thickness: AppSize.s2,),
          SizedBox(height: AppSize.s2,),
          Text('একাউন্ট নাম্বার'),
          SizedBox(height: AppSize.s2,),
          TextFormField(


            decoration: InputDecoration(

                hintText: 'ব্যাংক একাউন্ট নাম্বার টাইপ করুন',
                prefixIcon: Icon(Icons.person_2_outlined, color: AppColor.bkashPurple,)

            ),
            onChanged: (String? value) {
              controller.accountNo.value=value!;
            },
          ),
          SizedBox(height: AppSize.s6,),
          TextFormField(


            decoration: InputDecoration(

                hintText: 'ব্যাংক একাউন্ট টাইটেল টাইপ করুন',
                prefixIcon: Icon(Icons.person_2_outlined, color: AppColor.bkashPurple,)

            ),
            onChanged: (String? value) {
              controller.accountTitle.value=value!;
            },
          ),
          SizedBox(height: AppSize.s200,),
          Center(
              child: ElevatedButton(onPressed: () {



                controller.saveBank();
              },
                child: Text('এগিয়ে জান',
                  style: TextStyle(color: AppColor.colorWhite),),
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.bkashPurple),))


        ],


      );
    }
    ),

    ),

    ),

        )
    )
    );
    }
  }
