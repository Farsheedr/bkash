
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:untitled/app/styles/app_languages.dart';

import 'app/modules/home/bindings/home_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/styles/app_style.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({Key?key}): super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose() {

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    //using screenUtil package for adaptive screen size
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => child!,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Kuniko",
        initialRoute: AppPages.MAIN,
        initialBinding: HomeBinding(),
        getPages: AppPages.routes,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.light,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Nunito',
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: AppColor.accentColor,
                selectionHandleColor: AppColor.primaryAppColor1
            )
        ),
        translations: AppLanguages(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('bn', 'BD'),
        ],
      ),
    );
  }
}









