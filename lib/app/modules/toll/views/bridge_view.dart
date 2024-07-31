import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/toll/controllers/toll_controller.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../../home/widgets/side_menu.dart';


class BridgeView extends GetView<TollController> {
  const BridgeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
    onPressed: () {
    Get.toNamed(AppPages.TOLL);

    },
    ),
    title: Text(
    'টোল',
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
        padding: EdgeInsets.all(AppSize.s10),
        child:
        Column(
          children: [
            SearchBar(
                hintText: 'ব্রিজ খুঁজুন',
                backgroundColor: MaterialStateProperty.all(AppColor.lightGrayColor),
                elevation: MaterialStateProperty.all(0),
                leading: Icon(Icons.search, color: Colors.grey),





            ),
            SizedBox(height: AppSize.s4,),
            Divider(color:AppColor.lightGrayColor,
            thickness: AppSize.s4,),
            SizedBox(height: AppSize.s6,),
            Align
              (
                alignment:Alignment.topLeft,
                child: Text('বর্তমান ব্রিজসমুহ ')),
            SizedBox(height: AppSize.s4,),
            Obx(() {
              if (controller.isLoading.value) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (controller.bridgeList.isEmpty) {
                return Center(
                  child: Text('No bridges available.'),
                );
              }

              return ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller.bridgeList.length,
                itemBuilder: (context, index) {
                  final bridge = controller.bridgeList[index];
                  return ListTile(
                    title: Text(bridge.name),
                    
                    onTap: () {


                    },
                  );
                },
              );
            }),
          ],
        ),



      ),

    );
  }
}