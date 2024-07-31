import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/app/modules/toll/controllers/toll_controller.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../../home/widgets/side_menu.dart';


class TollView extends GetView<TollController> {
  const TollView({Key? key}) : super(key: key);

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
        padding: EdgeInsets.all(AppSize.s6),

        child: Column(

          children: [
            SizedBox(height: AppSize.s4,),
            Text('রেজিস্ট্রেশানকৃত মোটরযান সমূহ '),
            SizedBox(height: AppSize.s4,),
            Divider(
                color: AppColor.grayLightColor,
                thickness: AppSize.s2
            ),
            SizedBox(height: AppSize.s4,),
            Obx(() {
              if (controller.isLoading.value) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (controller.registeredVehiclesList.isEmpty) {
                return Center(
                  child: Text('No cars available.'),
                );
              }

              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.registeredVehiclesList.length,
                itemBuilder: (context, index) {
                  final car = controller.registeredVehiclesList[index];
                  return ListTile(
                    title: Text(car.name),
                    subtitle: Text(car.classInfo.name),

                    onTap: () {
                      controller.zoneId.value = car.zoneId;
                      Get.toNamed(AppPages.CARD2);
                    },
                  );
                },
              );
            }),

            Container(
              width: Get.width/1.5,
              child: ElevatedButton(onPressed: (){
                controller.getAllVehicleClasses();
                controller.getAllVehicleZones();
                Get.toNamed(AppPages.VEHICLE);
              },
                  child:Text('মোটরযান রেজিস্টার করুন',
                  style: TextStyle(color: AppColor.colorWhite),
                  ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.bkashPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s10)
                  )
        
                  )
                ),
            ),
            SizedBox(height: AppSize.s6,),
            TextButton(onPressed: (){
              // controller.getAllBridges();
              Get.toNamed(AppPages.BRIDGE);
            }, child: Text('বর্তমান ব্রিজসমুহ',
            style: TextStyle(color: AppColor.bkashPurple),)
        
            )
          ],
        ),
      ),
    );

  }


}
