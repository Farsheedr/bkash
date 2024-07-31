import 'dart:ffi';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/app/modules/toll/controllers/toll_controller.dart';
import 'package:untitled/app/modules/toll/models/get_all_vehicle_zones.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../../home/widgets/side_menu.dart';
import '../models/get_all_vehicle_classes.dart';


class VehicleInfoView extends GetView<TollController> {
  const VehicleInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          style: TextStyle(color: AppColor.colorWhite, fontWeight: FontWeight.bold),
        ),

        centerTitle: true,
        backgroundColor: AppColor.bkashPurple,
        actions: [
          Builder(
            builder: (context) =>
                IconButton(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('মোটরযানের তথ্য যোগ করুন'),
            SizedBox(height: AppSize.s4,),
            Divider(
              color: AppColor.grayLightColor,
              thickness: AppSize.s4
            ),
            SizedBox(height: AppSize.s4,),
            Text('মোটরযান রেজিস্ট্রেশান নাম্বার'),
            SizedBox(height: AppSize.s4,),
            Row(
              children: [
                Container(
                  width: Get.width/2.5,
                  height: AppSize.s50,

                  child:  DropdownSearch<GetAllVehicleClasses>(
                    popupProps: PopupProps.menu(
                      showSearchBox: false,
                      showSelectedItems: true,
                      // itemBuilder: (context, item, isSelected) {
                      //   return ListTile(
                      //     title: Text(item.tenure),
                      //   );
                      // },
                    ),
                    items: controller.vehicleClassList, // Use the list of Body objects
                    itemAsString: (GetAllVehicleClasses b)=> b.name,
                    dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                            labelText: '',
                            hintText: 'Relation',
                            hintStyle: TextStyle(color: AppColor.blackColor),
                            filled: true,
                            fillColor: AppColor.grayLightColor.withOpacity(0.3),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.grayLightColor.withOpacity(0.2),
                                  width: AppSize.s2,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.colorWhite.withOpacity(0.6),
                                  width: AppSize.s2,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColor.colorWhite.withOpacity(0.3),
                                    width: AppSize.s2
                                )
                            )
                        )
                    ),
                    selectedItem: controller.vehicleClassList.isNotEmpty ? controller.vehicleClassList.first : null,
                    dropdownBuilder: (context, selectedItem) {
                      if (selectedItem == null) {
                        return const Text('জোন');
                      }
                      return Text(selectedItem.name); // Display the selected product's name
                    },

                    onChanged: ( value) {


                        if (value != null) {
                          controller.classInfoId.value = value!.id;
                          // controller.zoneId.value =

                        };
                      },


                    compareFn: (GetAllVehicleClasses a, GetAllVehicleClasses b) => a.name == b.name,
                  ),
                ),
                SizedBox(width: AppSize.s32,),
                Container(
                  width: Get.width/2.5,
                  height: AppSize.s50,

                  child: DropdownSearch<GetAllVehicleZones>(
                    popupProps: PopupProps.menu(
                      showSearchBox: false,
                      showSelectedItems: true,
                    ),
                    items: controller.vehicleZoneList,

                    itemAsString: (GetAllVehicleZones b)=> b.name ,// Use the generated list of amounts
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: '',
                        filled: true,
                        fillColor: AppColor.grayLightColor.withOpacity(0.6),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.grayColor.withOpacity(0.2),
                            width: AppSize.s2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.colorWhite.withOpacity(0.6),
                            width: AppSize.s2,
                          ),

                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.colorWhite.withOpacity(0.3),
                            width: AppSize.s2,
                          ),
                          borderRadius: BorderRadius.circular(AppSize.s10),
                        ),
                      ),
                    ),
                    selectedItem: controller.vehicleZoneList.isNotEmpty ? controller.vehicleZoneList.first : null,
                    dropdownBuilder: (context, selectedItem) {
                      if (selectedItem == null) {
                        return const Text('ক্লাস');
                      }
                      return Text(selectedItem.name); // Display the selected product's name
                    },
                    onChanged: (value) {

                      if (value != null) {
                        controller.zoneId.value = value!.id;
                        // controller.zoneId.value =

                      }
                      print(value!.id);
                    },

                    compareFn: (GetAllVehicleZones a, GetAllVehicleZones b) => a.name == b.name,
                  ),
                  ),
                ]
            ),
            SizedBox(height: AppSize.s4,),
            TextFormField(
              controller: controller.registrationController,
              decoration: InputDecoration(
                hintText: 'যেমন 12-3456',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              onChanged:  (String? value) {
      controller.vehicleRegNo.value=value!;
      },
            ),
            SizedBox(height: AppSize.s4,),
            Divider(
                color: AppColor.grayLightColor,
                thickness: AppSize.s2
            ),
            SizedBox(height: AppSize.s4,),
            Text('মোটরযানের চেসিস নাম্বার (শেষ ৪ ডিজিট )'),
            SizedBox(height: AppSize.s2,),
            TextFormField(
              controller: controller.chassisController,
              decoration: InputDecoration(
                hintText: 'মোটরযানের চেসিস নাম্বার শেষ ৪ ডিজিট',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              onChanged:  (String? value) {
                controller.vehicleChassisNo.value=value!;
              },
            ),
            SizedBox(height: AppSize.s4,),
            Divider(
                color: AppColor.grayLightColor,
                thickness: AppSize.s2
            ),
            SizedBox(height: AppSize.s4,),
            Text('মোটরযান সেভ করুন'),
            TextFormField(
              controller: controller.vehicleController,
              decoration: InputDecoration(
                hintText: 'নাম লিখুন',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              onChanged:  (String? value) {
                controller.name.value=value!;
              },
            ),
            SizedBox(height: AppSize.s32,),
            Center(child: ElevatedButton(onPressed: (){

              controller.registerVehicles();}, child: Text('এগিয়ে যান')))
              ],
            ),






      )
    );



  }
}
  