import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/app/modules/home/widgets/offer_list.dart';
import 'package:untitled/app/modules/home/widgets/suggestion_list.dart';
import 'package:untitled/app/routes/app_pages.dart';
import 'package:untitled/app/styles/app_assets.dart';

import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_icon_button.dart';

class MainView extends GetView<HomeController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgRedWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Set the height of the AppBar here
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0), // Adjust the radius as needed
          ),
          child: AppBar(
            leading: SizedBox.shrink(),
            backgroundColor: AppColor.bkashPurple,
            flexibleSpace: Container(
              padding: EdgeInsets.all(16.0), // Adjust padding as needed
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
                      SizedBox(width: 8.0), // Space between avatar and text
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
                            child: ElevatedButton(
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
                        ],
                      ),
                      SizedBox(width: AppSize.s100),
                      Icon(
                        Icons.price_change_outlined,
                        size: 40,
                        color: AppColor.colorWhite,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
               Obx(() => AnimatedContainer(
                 duration: Duration(milliseconds: 300),
                 curve: Curves.fastOutSlowIn,
                 height: controller.isExpanded.value ? null : 200.0,
                 child:  Column(
                   children: [
                     controller.isExpanded.value || controller.containerHeight.value>200.0
                      ? GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true, // Wrap content inside the ExpansionTile
                        crossAxisCount: 4, // Number of columns in the grid
                        crossAxisSpacing: 5.0, // Spacing between columns
                        mainAxisSpacing: 5.0, // Spacing between rows
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
                            iconColor:Colors.deepPurple,
                            label: 'সেভিংস',
                            onPressed: () {
                              Get.toNamed(AppPages.SAVINGS);
                            },
                          ),
                          CustomIconButton(
                            icon: Icons.attach_money_outlined,
                            iconColor: Colors.brown,
                            label: 'লোন',
                            onPressed: () {
                              ;
                            },
                          ),
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
                      ):SizedBox.shrink(),
                   ],
                 )

               )
               ),
              SizedBox(height: 20), // Space between grid and carousel slider
              ElevatedButton(
                onPressed: () {
                  controller.isExpanded.value = !controller.isExpanded.value;
                  controller.containerHeight.value = controller.isExpanded.value ? 400.0 : 200.0;// Toggle the expansion state
                },
                child: Obx(() =>
                    Text(controller.isExpanded.value ? 'বন্ধ করুন' : 'আরো দেখুন',
                      style: TextStyle(
                          color: AppColor.bkashPurple
                      ),),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.colorWhite,),

              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16/9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason){
                    controller.updateCarouselIndex(index);

                  }
                ),
                items: [
                  AppAssets.carousel1,
                  AppAssets.carousel2,
                  AppAssets.carousel3,
                  AppAssets.carousel4,
                ].map((item) => Container(
                  child: Center(
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                )).toList(),
              ),
              DotsIndicator(
                dotsCount: 4, // Number of dots
                position: controller.carouselIndex.value, // Current dot position
                decorator: DotsDecorator(
                  size: const Size.square(9.0), // Size of each dot
                  activeSize: const Size(18.0, 9.0), // Size of the active dot
                  color: Colors.grey, // Inactive dot color
                  activeColor: AppColor.bkashPurple, // Active dot color
                  spacing: EdgeInsets.all(3.0), // Spacing between dots
                  activeShape: RoundedRectangleBorder( // Shape of the active dot
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: AppSize.s10,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.lightGrayColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.lightGrayColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'আমার বিকাশ ',
                        ),
                      ),
                    ),
                    SizedBox(height: AppSize.s8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              child: Container(
                                height: Get.height / 4.25,
                                width: Get.width / 2.5,
                                padding: EdgeInsets.all(25.0),
                                decoration: BoxDecoration(
                                  color: AppColor.bkashPurplelight,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColor.grayLightColor,
                                  ),
                                ),
                                child: GestureDetector(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.money),
                                      SizedBox(
                                        height: AppSize.s10,
                                      ),
                                      Text('২৫ টাকা ক্যাশব্যাক!'),
                                      SizedBox(height: AppSize.s10),
                                      Text('প্রথমবার মোবাইল রিচার্জে'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: AppSize.s10),
                          Column(
                            children: [
                              Container(
                                height: Get.height / 8.75,
                                padding: EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColor.lightGrayColor),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0), // Adjust padding as needed
                                      child: Icon(Icons.person_3_outlined),
                                    ),
                                    SizedBox(width: AppSize.s10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('তথ্য ও সহায়তার জন্য'),
                                        SizedBox(height: AppSize.s6),
                                        Text('যোগাযোগ করতে ট্যাপ করুন'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: AppSize.s10),
                              Container(
                                height: Get.height / 8.75,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColor.lightGrayColor),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0), // Adjust padding as needed
                                      child: Icon(Icons.video_call_outlined),
                                    ),
                                    SizedBox(width: AppSize.s10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('বিকাশ ব্যাবহার শিখতে'),
                                        SizedBox(height: AppSize.s6),
                                        Text('টিউটরিয়াল দেখুন'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppSize.s10,
              ),
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
                              child: Text(
                                  'সাজেশন   '
                              ),
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
                        SizedBox(height: AppSize.s10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SuggestionList(
                                imagePath: AppAssets.quizLogo,
                                text: 'কুইজগিরি', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: 'assets/images/image2.png',
                                text: 'কুইজমাসটার ', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.minLogo,
                                text: 'টেন মিনিট স্কুল', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.darazLogo,
                                text: 'দারাজ ', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.railwayLogo,
                                text: 'বাংলাদেশ রেলওয়ে ', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.shadhinLogo,
                                text: 'স্বাধীন ', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.toffeeLogo,
                                text:' টফি ', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.shongjogLogo,
                                text: 'সংযোগ', onTap: () {  },
                              ),
                              SuggestionList(
                                imagePath: AppAssets.gameLogo,
                                text: 'গেমস্টার', onTap: () {  },
                              ),

                            ],
                          ),

                        ),
                      ],

                    ),

                  ),
                  SizedBox(height: AppSize.s6,),
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
                            child: Text(
                                ' অফার  '
                            ),
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
                      SizedBox(height: AppSize.s6),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            OfferList(
                              imagePath: AppAssets.medixLogo,
                              text: '২০% ক্যাশব্যাক', onTap: () {  },
                              subtext: 'মেডি',
                            ),
                            SizedBox(width: AppSize.s8,),
                            OfferList(
                              imagePath: AppAssets.zayanLogo,
                              text: '৬৫% ডিসকাউনট', onTap: () {  },
                              subtext: 'গোজায়ান ',
                            ),
                            SizedBox(width: AppSize.s8,),
                            OfferList(
                              imagePath: AppAssets.amyLogo,
                              text: '১৫% ডিসকাউনট', onTap: () {  },
                              subtext: 'এমি ট্রাভেল ',
                            ),
                            SizedBox(width: AppSize.s8,),
                            OfferList(
                              imagePath: AppAssets.onmobileLogo,
                              text: 'বাইক জিতুন', onTap: () {  },
                              subtext: 'অনমোবাইল ',
                            )


                          ],
                        ),
                      )


                ],
              ),







    )
                      ],
          ),
                  SizedBox(height: AppSize.s6,),
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
                      child: Text(
                          ' অন্যান্য সেবাসমূহ   '
                      ),
                    ),

                  ])
        ]),
    ),
    Column(
    children: [

    GridView.count(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true, // Wrap content inside the ExpansionTile
    crossAxisCount: 4, // Number of columns in the grid
    crossAxisSpacing: 5.0, // Spacing between columns
    mainAxisSpacing: 5.0, // Spacing between rows
    children: [
    CustomIconButton(
    icon: Icons.airplane_ticket,
    iconColor: AppColor.appYellow,
    label: 'টিকেট ',
    onPressed: () {


    },
    ),
    CustomIconButton(
    icon: Icons.search_outlined,
    label: 'জিপি ফ্লেক্সিপ্লান',
    onPressed: () {

    },
    ),
    CustomIconButton(
    icon: Icons.favorite_border_outlined,
    iconColor: AppColor.bkashPurple,
    label: 'ডোনেশন',
    onPressed: () {
    // Add your onPressed logic here
    },
    ),
    CustomIconButton(
    icon: Icons.local_hospital,
    iconColor: AppColor.appBlue,

    label: ' ইনসিওরেন্স প্লান ',
    onPressed: () {
    // Add your onPressed logic here
    },
    ),
    CustomIconButton(
    icon: Icons.gamepad ,
    iconColor: AppColor.appBlue,
    label: 'গেমস',
    onPressed: () {
    // Add your onPressed logic here
    },
    ),
    CustomIconButton(
    icon: Icons.flight,
    iconColor: AppColor.appYellow,
    label: 'ট্রাভেল',
    onPressed: () {
    // Add your onPressed logic here
    },
    ),
    CustomIconButton(
    icon: Icons.mosque,
    iconColor: AppColor.appGreen,
    label: 'দ্বীন',
    onPressed: () {
    // Add your onPressed logic here
    },
    ),
    CustomIconButton(
    icon: Icons.attach_money_outlined,
    iconColor: AppColor.appGreen,
    label: 'বিডি ট্যাক্স ',
    onPressed: () {
    // Add your onPressed logic here
    },
    ),

    ]
    )
        ]
    )
          ]
              )
        ]
    )
      )
      )
    );


  }
}
