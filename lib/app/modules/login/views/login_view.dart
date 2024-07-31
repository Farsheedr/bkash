import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/preference_data/local_preference.dart';
import '../../../styles/app_style.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/provider/login_provider.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LocalPreferences localPreferences = Get.put(LocalPreferences());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'আপনার বিকাশ অ্যাকাউন্টে\nলগ ইন করুন',

                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: AppSize.s20),
              TextFormField(
                controller: controller.mobileController,
                decoration: InputDecoration(
                  labelText: 'অ্যাকাউন্ট নাম্বার',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.lightGrayColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.lightGrayColor),
                  ),
                ),
              ),
              SizedBox(height: AppSize.s20),
              TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(
                  labelText: 'পাসওয়ার্ড',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.lightGrayColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.lightGrayColor),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: AppSize.s20),

              SizedBox(height: AppSize.s20),
              ElevatedButton(
                 onPressed: (){controller.onLoginClicked();
                    },
                child: Text(
                  'Login',
                  style: TextStyle(color: AppColor.colorWhite),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.bkashPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
