import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/utils/date_in_months.dart';

import '../../../routes/app_pages.dart';
import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';
import '../widgets/side_menu.dart';

class StatementView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
    onPressed: () {
    Get.toNamed(AppPages.INITIAL);
    },
    ),
    title: Text(
    'স্টেটমেন্ট ',
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
    child: Column(
    children: [
    TabBar(
    indicatorColor: AppColor.bkashPurple,
    labelColor: AppColor.bkashPurple,

    tabs: [
    Tab(text: 'লেনদেনের বিবরণী  ',),
    Tab(text: 'লেনদেনের সার-সংক্ষেপ '),
    ],
    ),
    Expanded(
    child: TabBarView(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: AppSize.s10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('ফিলটার করুন  '),
                  SizedBox(width: AppSize.s42,),
                  ElevatedButton(onPressed: (){}, child: Text('+ ইন '),
                    style: ElevatedButton.styleFrom(elevation: 0,
                    foregroundColor: AppColor.appGreen,
                      side: BorderSide(color:AppColor.appGreen )
                    ),
                  ),
                  SizedBox(width: AppSize.s2,),
                  ElevatedButton(onPressed: (){}, child: Text('- আউট '),
                    style: ElevatedButton.styleFrom(elevation: 0,
                      foregroundColor: AppColor.appRed,
                      side: BorderSide(color:AppColor.appRed)
                    )
                  )
                ],

              ),
            ],
          ),
        ),
        //Content for second Tab
        SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(


                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.decrementDate();
                        },
                        icon: Icon(Icons.chevron_left_outlined),
                      ),

                      Obx(() => Row(
                        children: [
                          Text(
                            '${getMonthInWords(controller.selectedDate.value.month)}'
                                '${controller.selectedDate.value.year}',
                            style: TextStyle(fontSize: AppSize.s16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: AppSize.s4),
                          Text(
                            'সার সংক্ষেপ',
                          style: TextStyle(
                            fontSize: AppSize.s16,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      )),

                      IconButton(
                        onPressed: () {
                          controller.incrementDate();
                        },
                        icon: Icon(Icons.chevron_right_outlined),
                      )
                    ],
                  ),
                  SizedBox(height: AppSize.s6,),
                  Divider(
                    color: AppColor.lightGrayColor,
                    thickness: AppSize.s2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text('শুরুর ব্যালান্স',
                      style: TextStyle(
                        color: AppColor.grayLightColor,
                        fontSize: AppSize.s14
                      ),),
                      SizedBox(width: AppSize.s32,),
                      Text('শেষ ব্যালান্স',
                          style: TextStyle(
                              color: AppColor.grayLightColor,
                              fontSize: AppSize.s14
                          ))

                    ],
                  )

                ]

                
              ),
              )

        )
      ]
              )

          )
        ]
    )
    )
    )
        )
    );


  }
}