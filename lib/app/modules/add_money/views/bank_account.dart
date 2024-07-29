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

class BkashtoBankView extends GetView<AddMoneyController> {
  const BkashtoBankView({Key? key}) : super(key: key);
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
    ' ব্যাংকের নাম টাইপ করে খুঁজুন ',
    style: TextStyle(
    color: AppColor.grayColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
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
    hintText: 'ব্যাংকের নাম লিখুন  ',
    hintStyle: TextStyle(color: AppColor.grayLightColor),
    ),
    ),
    SizedBox(height: AppSize.s6,),
    Divider(
    color: AppColor.lightGrayColor,
    thickness: AppSize.s4,
    ),
      SizedBox(height: AppSize.s6,),
      Text('সেভ করে রাখা ব্যাংক '),
      SizedBox(height: AppSize.s6,),
      Divider(
        color: AppColor.lightGrayColor,
        thickness: AppSize.s2,
      ),
      SizedBox(height: AppSize.s4,),
      Text('সব ব্যাংক '),
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

        if (controller.bankList.isEmpty) {
          return Center(
            child: Text('No banks available.'),
          );
        }

        return ListView.builder(
          shrinkWrap: true,
          itemCount: controller.bankList.length,
          itemBuilder: (context, index) {
            final bank = controller.bankList[index];
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
        )
    );
    }
  }