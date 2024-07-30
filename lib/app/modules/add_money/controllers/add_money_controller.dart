import 'dart:io';

import 'package:get/get.dart';
import 'package:untitled/app/data/preference_data/remote_services.dart';
import 'package:untitled/app/modules/add_money/models/get_all_cards.dart';
import 'package:untitled/app/modules/add_money/models/get_all_internet_bank.dart';

import '../../../routes/app_pages.dart';
import '../../home/widgets/negativeSnackBar.dart';
import '../../home/widgets/positive_snackbar.dart';
import '../models/get_all_banks_add_money.dart';

class AddMoneyController extends GetxController {
  RxBool isLoading = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    getBankList();
    getInternetBankList();
    getCardList();


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
    print('============getBankList=============');
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
    print('============getBankList=============');
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
  void addSourceBank() async{
  print('=======addSourceBank=======');

  var reqBody = {
    "id": 4,
    "bankName": "Bangladesh Commerce Bank Limited",
    "web": null,
    "phone": null,
    "logoUrl": null,
    "bankingType": 2,
    "accNumberLength": 0,
    "minAddMoneyAmount": 0.00,
  };

  try {
    isLoading.value = true;
    await RemoteServices.addSourceBank(reqBody).then((value) {
      print("value====>>> $value");
      if(value.contains("successfully")){
        snackbarPositive("Successful Registration");
        Get.toNamed(AppPages.INITIAL);
      } else {
        negativeSnackbar(message:value);
      }
    }).catchError((error) {
      isLoading.value = false;
      print("nomineeRegistration " + error.toString());
    });
  } on HttpException catch (error) {
    isLoading.value = false;
    print('nomineeRegistration error: $error');
  } finally {
    isLoading.value = false;
  }
  }


  }




