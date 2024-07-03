import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../styles/app_style.dart';
import '../controllers/home_controller.dart';

class AnimatedButtonText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => ElevatedButton(
        onPressed: () {
          controller.toggleBalanceText();
        },
        child: Text(
          controller.showBalance.value
              ? 'আপনার ব্যালেন্স দেখুন'
              : 'ব্যালেন্স দেখুন',
          style: TextStyle(color: AppColor.bkashPurple),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.colorWhite,
        ),
      ),
    );
  }
}