import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/preference_data/local_preference.dart';
import '../../../routes/app_pages.dart';
import '../providers/login_provider.dart';

class LoginController extends GetxController {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController securityController = TextEditingController();

  RxBool isPasswordVisible = false.obs;
  RxBool passwordError = false.obs;
  RxBool isChecked = false.obs;
  void togglePasswordVisibility(){
    isPasswordVisible.value = !isPasswordVisible.value;

  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  LocalPreferences localPreferences = Get.put(LocalPreferences());


  Future<void> onLoginClicked() async {
    if (mobileController.text == "") {
      Get.snackbar("Validation", "Please, Enter Username");
      return;
    }
    if (passwordController.text == "") {
      Get.snackbar("Validation", "Please, Enter Password");
      return;
    }
    // if (securityController.text == "") {
    //   Get.snackbar("Validation", "Please, Enter Security Key");
    //   return;



    try {
      LoginProvider().login(mobileController.text, passwordController.text).then((responseBody) {

        debugPrint("-----------------jwt->${responseBody.jwt}");
        debugPrint('local-preferences-> ${localPreferences.customerId.val}');



        localPreferences.token.val = responseBody.jwt;
        localPreferences.loginUser.val = responseBody.user.fullName;
         localPreferences.nid.val = responseBody.user.nationalIdentityNo;
         localPreferences.phone.val = responseBody.user.phoneNumber;
         localPreferences.userName.val = responseBody.user.userName;
         localPreferences.userGender.val = responseBody.user.gender.name;
         localPreferences.userEmail.val = responseBody.user.email;
         localPreferences.userType.val = responseBody.user.userType.typeName;
         localPreferences.customerId.val = responseBody.customerId ;

        debugPrint('local-preferences1-> ${localPreferences.customerId.val}');


        debugPrint("-----------------jwt->${responseBody.jwt.isEmpty}");

        if(responseBody.jwt.isNotEmpty){
          debugPrint("-----------------1");
          Get.offAllNamed(AppPages.INITIAL);
        }else{
          // toast / snackbar
          debugPrint("-----------------2");

        }

      });
    } on HttpException catch (error) {
      Get.defaultDialog(title: 'Login Error', middleText: error.toString());
    } finally {

    }
  }
}

