import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/billList.dart';
import '../models/school_list.dart';
import '../widgets/custom_elevated_button.dart';

class PayBillView extends GetView<HomeController> {
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
          'পে বিল ',
          style: TextStyle(color: AppColor.colorWhite, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColor.bkashPurple,
      ),
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
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'প্রতিষ্ঠান খুঁজুন',
                      style: TextStyle(
                        color: AppColor.grayColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
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
                        hintText: 'প্রতিষ্ঠানের নাম বা ধরন দিন',
                        hintStyle: TextStyle(color: AppColor.grayLightColor),
                      ),
                    ),
                    SizedBox(height: AppSize.s6),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness: 2.0,
                    ),
                    SizedBox(height: AppSize.s6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.receipt_long_outlined,
                                color: AppColor.bkashPurple,
                                size: 30,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                ' রিসিট এবং \n টোকেন ',
                                style: TextStyle(
                                  color: AppColor.bkashPurple,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          color: AppColor.blackColor,
                          thickness: 2.0,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.auto_graph_outlined,
                                color: AppColor.bkashPurple,
                                size: 30,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'পে বিল \n বিবরণী  ',
                                style: TextStyle(
                                  color: AppColor.bkashPurple,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.s6),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s6),
                    Text(
                      'সব প্রতিষ্ঠান',
                      style: TextStyle(
                        color: AppColor.grayLightColor,
                      ),
                    ),
                    SizedBox(height: AppSize.s6),
                    Divider(
                      color: AppColor.lightGrayColor,
                      thickness: AppSize.s2,
                    ),
                    SizedBox(height: AppSize.s6),
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      children: List.generate(11, (index) {
                        final labels = [
                          'বিদ্যুৎ ',
                          'গ্যাস ',
                          'পানি ',
                          'ইন্টারনেট ',
                          'টেলিফোন ',
                          'টিভি',
                          'ক্রেডিট',
                          'সরকারি ফি ',
                          'ইন্সুরান্স  ',
                          'ট্র্যাকের ',
                          'অন্যান্য '
                        ];
                        final List<VoidCallback> buttonActions = [
                              () {
                                controller.toggleElectricList();

                          },
                              () {
                                controller.toggleGasList();


                          },
                              () {
                                controller.toggleWaterList();

                          },
                              () {
                                controller.toggleInternetList();
                          },
                              () {
                                controller.toggleTelephoneList();
                          },
                              () {
                                controller.toggleTvList();
                          },
                              () {
                                controller.toggleCreditList();
                          },
                              () {
                                controller.toggleGovernmentList();
                          },
                              () {
                                controller.toggleInsuranceList();
                          },
                              () {
                                controller.toggleTrackerList();
                          },
                              () {
                                controller.toggleOther2List();
                          },
                        ];
                        final List<IconData> icons = [
                          Icons.lightbulb_outline,
                          Icons.local_gas_station_outlined,
                          Icons.water_damage_outlined,
                          Icons.wifi_outlined,
                          Icons.phone_outlined,
                          Icons.tv_outlined,
                          Icons.credit_card_outlined,
                          Icons.account_balance_outlined,
                          Icons.local_hospital_outlined,
                          Icons.local_shipping_outlined,
                          Icons.device_unknown_outlined,
                        ];
                        return CustomTextButton(
                          onPressed: buttonActions[index],
                          icon: icons[index],
                          label: labels[index],
                          iconColor: AppColor.bkashPurple,
                          backgroundColor: AppColor.colorWhite,
                          foregroundColor: AppColor.bkashPurple,
                        );


                      }),
                    ),
                    Obx(() {

                      if (controller.showElectricList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: electric.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                electric[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                electric[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                electric[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showGasList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: gas.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                gas[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                gas[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                gas[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showWaterList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: water.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                water[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                water[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                water[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showInternetList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: internet.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                internet[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                internet[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                internet[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showTelephoneList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: telephone.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                telephone[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                telephone[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                telephone[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showTvList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: tv.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                tv[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                tv[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                tv[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showCreditList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: credit.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                credit[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                credit[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                credit[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showGovernmentList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: government.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                government[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                government[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                government[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showInsuranceList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: insurance .length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                insurance[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                insurance[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                insurance[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showTrackerList.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: tracker.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                tracker[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                tracker[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                tracker[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                    Obx(() {

                      if (controller.showOther2List.value) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: other2.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                other2[index].assetImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                other2[index].name,
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                other2[index].type,
                                style: TextStyle(color: AppColor.grayColor),
                              ),
                              onTap: () {
                                // Handle onTap
                              },
                            );
                          },
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),


                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}