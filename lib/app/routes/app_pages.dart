import 'package:get/get.dart';
import 'package:untitled/app/modules/home/views/add_money.dart';
import 'package:untitled/app/modules/home/views/cash_out.dart';
import 'package:untitled/app/modules/home/views/pay_bill.dart';
import 'package:untitled/app/modules/home/views/payment.dart';
import 'package:untitled/app/modules/home/views/send_money_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/education_view.dart';
import '../modules/home/views/main_page.dart';
import '../modules/home/views/other_view.dart';
import '../modules/home/views/recharge_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;
  static const OTHER = Routes.OTHER;
  static const EDUCATION = Routes.EDUCATION;
  static const MONEY = Routes.MONEY;
  static const RECHARGE = Routes.RECHARGE;
  static const CASH = Routes.CASH;
  static const PAYMENT = Routes.PAYMENT;
  static const ADD = Routes.ADD;
  static const BILL = Routes.BILL;






  static final routes = [
    GetPage(
      name: _Paths.EDUCATION,
      page: () =>  EducationView(),
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

    GetPage(
      name: _Paths.RECHARGE,
      page: () =>  RechargeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CASH,
      page: () =>  CashoutView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () =>  PaymentView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD,
      page: () =>  AddMoneyView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BILL,
      page: () =>  PayBillView(),
      binding: HomeBinding(),
    ),
  ];
}
