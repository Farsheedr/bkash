import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/widgets/side_menu.dart';
import '../../../routes/app_pages.dart';
import '../../../styles/app_assets.dart';
import '../controllers/home_controller.dart';
import '../../../styles/app_style.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/offer_list.dart';
import '../widgets/suggestion_list.dart';

class MainView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgRedWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
          child: AppBar(
            leading: SizedBox.shrink(),
            backgroundColor: AppColor.bkashPurple,
            flexibleSpace: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 9.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColor.colorWhite,
                        child: Icon(
                          Icons.person,
                          color: AppColor.bkashPurple,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Farsheed Rahman',
                            style: TextStyle(
                              color: AppColor.colorWhite,
                              fontSize: 20.0,
                            ),
                          ),
                          Container(
                            height: 25,
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              transitionBuilder: (Widget child, Animation<double> animation) {
                                return ScaleTransition(
                                  scale: animation,
                                  child: child,
                                );
                              },
                              child: ElevatedButton(
                                key: Key('balance button key'),
                                onPressed: () {},
                                child: Text(
                                  'ব্যালেন্স দেখুন',
                                  style: TextStyle(color: AppColor.bkashPurple),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.colorWhite,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Builder(
                          builder: (context) =>
                              IconButton(
                                icon: Icon(Icons.menu, color: Colors.white

                                ),
                                onPressed: () {
                                  Scaffold.of(context).openEndDrawer();

                                },

                              )

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      endDrawer: SideMenu(),
      endDrawerEnableOpenDragGesture: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(() =>
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    curve: Curves.fastOutSlowIn,
                    height: controller.showFullGrid.value ? null : 200.0,
                    child: Column(
                      children: [

                          GridView.count(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 4,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                            children: [
                              CustomIconButton(
                                icon: Icons.monetization_on_outlined,
                                iconColor: AppColor.appRed,
                                label: 'সেনড মানি',
                                onPressed: () {
                                  Get.toNamed(AppPages.MONEY);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.send_to_mobile,
                                iconColor: AppColor.appGreen,
                                label: 'মোবাইল রিচার্জ',
                                onPressed: () {
                                  Get.toNamed(AppPages.RECHARGE);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.money_outlined,
                                iconColor: AppColor.cyan,
                                label: 'ক্যাশ আউট',
                                onPressed: () {
                                  Get.toNamed(AppPages.CASH);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.shopping_bag,
                                iconColor: Colors.orange,
                                label: 'পেমেন্ট ',
                                onPressed: () {
                                  Get.toNamed(AppPages.PAYMENT);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.add_card,
                                iconColor: Colors.purple,
                                label: 'অ্যাড মানি',
                                onPressed: () {
                                  Get.toNamed(AppPages.ADD);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.lightbulb,
                                iconColor: AppColor.appGreen,
                                label: 'পে বিল',
                                onPressed: () {
                                  Get.toNamed(AppPages.BILL);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.savings,
                                iconColor: Colors.deepPurple,
                                label: 'সেভিংস',
                                onPressed: () {
                                  Get.toNamed(AppPages.SAVINGS);
                                },
                              ),
                              CustomIconButton(
                                icon: Icons.attach_money_outlined,
                                iconColor: Colors.brown,
                                label: 'লোন',
                                onPressed: () {},
                              ),


                            ],
                          ),
                        if (controller.showFullGrid.value)
      GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: [
          CustomIconButton(
            icon: Icons.monetization_on_outlined,
            iconColor: AppColor.appBlue,
            label: 'ইনসিওরেন্স',
            onPressed: () {
              Get.toNamed(AppPages.INSURANCE);
            },
          ),

          CustomIconButton(
            icon: Icons.house,
            iconColor: AppColor.appRed,
            label: 'বিকাশ টু ব্যাংক',
            onPressed: () {
              Get.toNamed(AppPages.BANK);
            },
          ),
          CustomIconButton(
            icon: Icons.school,
            iconColor: AppColor.blackColor,
            label: 'এডুকেশন ফি',
            onPressed: () {
              Get.toNamed(AppPages.EDUCATION);
            },
          ),
          CustomIconButton(
            icon: Icons.price_check,
            iconColor: AppColor.bkashPurplelight,
            label: 'মাইক্রোফাইনান্স',
            onPressed: () {
              Get.toNamed(AppPages.MICRO);
            },
          ),
          CustomIconButton(
            icon: Icons.mobile_screen_share,
            iconColor: AppColor.appRed,
            label: 'রিকুোয়েষট মানি ',
            onPressed: () {
              Get.toNamed(AppPages.REQUEST);
            },
          ),
          CustomIconButton(
            icon: Icons.language,
            iconColor: AppColor.appGreen,
            label: 'রেমিটেন্স  ',
            onPressed: () {
              Get.toNamed(AppPages.REMITTANCE);
            },
          ),
          CustomIconButton(
            icon: Icons.search_outlined,
            label: 'বিনিময়',
            onPressed: () {
              // Add your onPressed logic here
            },
          ),

        ],
      )
                      ],
                    ),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.toggleGridExpansion();
                },
                child: Obx(() =>
                    Text(
                      controller.showFullGrid.value ? 'বন্ধ করুন' : 'আরো দেখুন',
                      style: TextStyle(
                        color: AppColor.bkashPurple,
                      ),
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.colorWhite,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.lightGrayColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('সাজেশন   '),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Add your onTap logic here
                          },
                          child: Text(
                            'সব দেখুন',
                            style: TextStyle(
                              color: AppColor.bkashPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SuggestionList(
                            imagePath: AppAssets.quizLogo,
                            text: 'কুইজগিরি',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.quizLogo,
                            text: 'কুইজমাসটার ',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.minLogo,
                            text: 'টেন মিনিট স্কুল',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.darazLogo,
                            text: 'দারাজ ',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.railwayLogo,
                            text: 'বাংলাদেশ রেলওয়ে ',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.shadhinLogo,
                            text: 'স্বাধীন ',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.toffeeLogo,
                            text: 'টফি ',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.shongjogLogo,
                            text: 'সংযোগ',
                            onTap: () {},
                          ),
                          SuggestionList(
                            imagePath: AppAssets.gameLogo,
                            text: 'গেমস্টার',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.lightGrayColor,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(' অফার  '),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Text(
                                'সব দেখুন',
                                style: TextStyle(
                                  color: AppColor.bkashPurple,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              OfferList(
                                imagePath: AppAssets.medixLogo,
                                text: '২০% ক্যাশব্যাক',
                                onTap: () {},
                                subtext: 'মেডি',
                              ),
                              SizedBox(width: 8),
                              OfferList(
                                imagePath: AppAssets.zayanLogo,
                                text: '৬৫% ডিসকাউনট',
                                onTap: () {},
                                subtext: 'গোজায়ান ',
                              ),
                              SizedBox(width: 8),
                              OfferList(
                                imagePath: AppAssets.amyLogo,
                                text: '১৫% ডিসকাউনট',
                                onTap: () {},
                                subtext: 'এমি ট্রাভেল ',
                              ),
                              SizedBox(width: 8),
                              OfferList(
                                imagePath: AppAssets.onmobileLogo,
                                text: 'বাইক জিতুন',
                                onTap: () {},
                                subtext: 'অনমোবাইল ',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.lightGrayColor,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(' অন্যান্য সেবাসমূহ   '),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        children: [
                          CustomIconButton(
                            icon: Icons.airplane_ticket,
                            iconColor: AppColor.appYellow,
                            label: 'টিকেট ',
                            onPressed: () {
                              Get.toNamed(AppPages.TICKET);
                            },
                          ),
                          CustomIconButton(
                            icon: Icons.search_outlined,
                            label: 'জিপি ফ্লেক্সিপ্লান',
                            onPressed: () {},
                          ),
                          CustomIconButton(
                            icon: Icons.favorite_border_outlined,
                            iconColor: AppColor.bkashPurple,
                            label: 'ডোনেশন',
                            onPressed: () {
                              Get.toNamed(AppPages.DONATION);
                            },
                          ),
                          CustomIconButton(
                            icon: Icons.local_hospital,
                            iconColor: AppColor.appBlue,
                            label: ' ইনসিওরেন্স প্লান ',
                            onPressed: () {},
                          ),
                          CustomIconButton(
                            icon: Icons.gamepad,
                            iconColor: AppColor.appBlue,
                            label: 'গেমস',
                            onPressed: () {},
                          ),
                          CustomIconButton(
                            icon: Icons.flight,
                            iconColor: AppColor.appYellow,
                            label: 'ট্রাভেল',
                            onPressed: () {},
                          ),
                          CustomIconButton(
                            icon: Icons.mosque,
                            iconColor: AppColor.appGreen,
                            label: 'দ্বীন',
                            onPressed: () {},
                          ),
                          CustomIconButton(
                            icon: Icons.attach_money_outlined,
                            iconColor: AppColor.appGreen,
                            label: 'বিডি ট্যাক্স ',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'হোম ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR স্ক্যান ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: ' ইনবক্স',
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: AppColor.bkashPurple,
        onTap: (index) {
          controller.selectedIndex.value = index;
        },
      ),


    );
  }
}

