import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/app/utils/app_apis.dart';

import '../../modules/add_money/models/get_all_banks_add_money.dart';
import '../../modules/add_money/models/get_all_cards.dart';
import '../../modules/add_money/models/get_all_internet_bank.dart';


class RemoteServices{

  static final client = http.Client();


static Future<List<GetAllBanksAddMoney>> getBankList() async{
  final url = AppApis.getAllBanksForAddMoneyApi;

  var response = await client.get(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json; charset=UTF-8'}
  );
  print('Response Status Code: ${response.statusCode}');
  print('Response Body: ${response.body}');
  if (response.statusCode == 200){
    return getAllBanksAddMoneyFromJson(response.body);
  }else{
    throw HttpException('Something went wrong');
  }
}
  static Future<List<GetAllInternetBankForAddMoney>> getInternetBankList() async{
    final url = AppApis.getAllInternetBanksForAddMoneyApi;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200){
      return getAllInternetBankForAddMoneyFromJson(response.body);
    }else{
      throw HttpException('Something went wrong');
    }
  }
  static Future<List<GetAllCardsForAddMoney>> getCardList() async{
    final url = AppApis.getAllCardForAddMoneyApi;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200){
      return getAllCardsForAddMoneyFromJson(response.body);
    }else{
      throw HttpException('Something went wrong');
    }
  }
  static Future<String> addSourceBank(reqBody) async {
    final url = AppApis.addSourceBank;

    var response = await client.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json ; charset=UTF-8' },
      body: jsonEncode(reqBody),
    );
    print('Response Status Code : ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body)["message"];
    } else {
      throw const HttpException('Something went wrong!');
    }
  }

}



