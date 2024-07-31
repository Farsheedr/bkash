import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/data/preference_data/remote_services.dart';
import 'package:untitled/app/modules/add_money/models/get_all_cards.dart';
import 'package:untitled/app/modules/add_money/models/get_all_internet_bank.dart';

import '../../../data/preference_data/local_preference.dart';
import '../../../routes/app_pages.dart';
import '../../home/widgets/negativeSnackBar.dart';
import '../../home/widgets/positive_snackbar.dart';
import '../models/get_all_banks_add_money.dart';
import '../models/get_saved_banks.dart';

class AddMoneyController extends GetxController {
  final localPreferences = Get.put(LocalPreferences());

  RxBool isLoading = false.obs;
  var selectedBankName = "".obs;
  final TextEditingController accountNoController = TextEditingController();

  var accountNo = "".obs;
  var accountTitle = "".obs;
  var customerId = "".obs;
  var bankId = 0.obs;
  var id = 0.obs;


  final count = 0.obs;
  @override
  void onInit() {
    getBankList();
    getInternetBankList();
    getCardList();
    getSavedBank();


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

var bankList =<GetAllBanksAddMoney>[].obs;
var internetList=<GetAllInternetBankForAddMoney>[].obs;
var cardList=<GetAllCardsForAddMoney>[].obs;
var savedBankList=<GetSavedBank>[].obs;

void getBankList() async{
  print('============getBankList=============');
  isLoading.value = true;
  try{
    await RemoteServices.getBankList().then((value) {
      bankList.value = value;



      isLoading.value = false;
    }).catchError((error) {
      print("getBankList " + error.toString());
      isLoading.value = false;
    });
  } catch (error) {
    print('getBankList error: $error');
    isLoading.value = false;
  }
}
  void getInternetBankList() async{
    print('============getInternetList=============');
    isLoading.value = true;
    try{
      await RemoteServices.getInternetBankList().then((value) {
        internetList.value = value;



        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }
  void getCardList() async{
    print('============getCardList=============');
    isLoading.value = true;
    try{
      await RemoteServices.getCardList().then((value) {
        cardList.value = value;



        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }
  void saveBank() async{
  print('=======saveBank=======');

  var reqBody = {
    "id": 0,
    "customerId": localPreferences.customerId.val,
    "bankId": bankId.value,
    "accountNo": accountNo.value,
    "accountTitle": accountTitle.value,
  };

  try {
    isLoading.value = true;
    await RemoteServices.saveBank(reqBody).then((value) {
      print("value====>>> $value");
      if(value.contains("successfully")){
        snackbarPositive("Successful Registration");
        Get.toNamed(AppPages.INITIAL);
      } else {
        negativeSnackbar(message:value);
      }
    }).catchError((error) {
      isLoading.value = false;
      print("saveBank " + error.toString());
    });
  } on HttpException catch (error) {
    isLoading.value = false;
    print('saveBank error: $error');
  } finally {
    isLoading.value = false;
  }
  }


  void getSavedBank() async{
    print('============getSavedBank=============');
    isLoading.value = true;
    try{
      await RemoteServices.getSavedBank().then((value) {
        savedBankList.value=value;




        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }




}







