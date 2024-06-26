import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';
import '../models/school_list.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgRedWhite,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.colorWhite),
            onPressed: () {},
          ),
          title: Text(
            'এডুকেশন ফি',
            style: TextStyle(color: AppColor.colorWhite, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: AppColor.bkashPurple,
        )
    );
  }
}