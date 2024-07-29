import 'package:get/get.dart';
import 'package:untitled/app/data/preference_data/remote_services.dart';
import 'package:untitled/app/modules/add_money/models/get_all_cards.dart';
import 'package:untitled/app/modules/add_money/models/get_all_internet_bank.dart';

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
  }



