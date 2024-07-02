import 'package:get/get.dart';
import 'package:untitled/app/modules/home/views/send_money_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/main_page.dart';
import '../modules/home/views/other_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const OTHER = Routes.OTHER;
  static const MAIN = Routes.MAIN;
  static const MONEY = Routes.MONEY;


  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OTHER,
      page: () =>  OtherView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () =>  MainView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MONEY,
      page: () =>  SendMoneyView(),
      binding: HomeBinding(),
    ),
  ];
}
