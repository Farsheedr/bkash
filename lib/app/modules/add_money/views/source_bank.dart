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
    fontWeight: FontWeight.bold,
    ),
    ),
      SizedBox(height: AppSize.s4,),
      Divider(
        color: AppColor.grayLightColor,
        thickness: AppSize.s4,
      ),



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