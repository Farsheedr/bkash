import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/app/utils/app_apis.dart';

import '../../modules/add_money/models/get_all_banks_add_money.dart';
import '../../modules/add_money/models/get_all_cards.dart';
import '../../modules/add_money/models/get_all_internet_bank.dart';
import '../../modules/add_money/models/get_saved_banks.dart';
import '../../modules/add_money/models/get_saved_card.dart';
import '../../modules/pay_bill/models/get_all_organization_types.dart';
import '../../modules/toll/models/get_all_bridges.dart';
import '../../modules/toll/models/get_all_registered_vehicles.dart';
import '../../modules/toll/models/get_all_vehicle_classes.dart';
import '../../modules/toll/models/get_all_vehicle_zones.dart';
import 'local_preference.dart';


class RemoteServices {
  static final localPreferences = Get.find<LocalPreferences>();

  static final client = http.Client();


  static Future<List<GetAllBanksAddMoney>> getBankList() async {
    final url = AppApis.getAllBanksForAddMoneyApi;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllBanksAddMoneyFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<List<GetAllInternetBankForAddMoney>> getInternetBankList() async {
    final url = AppApis.getAllInternetBanksForAddMoneyApi;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllInternetBankForAddMoneyFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<List<GetAllCardsForAddMoney>> getCardList() async {
    final url = AppApis.getAllCardForAddMoneyApi;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllCardsForAddMoneyFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<String> saveBank(reqBody) async {
    final url = AppApis.saveBank;

    var response = await client.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json ; charset=UTF-8'},
      body: jsonEncode(reqBody),
    );
    print('Response  : ${jsonEncode(reqBody)}');
    print('Response Status Code : ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body)["message"];
    } else {
      throw const HttpException('Something went wrong!');
    }
  }

  static Future<List<GetSavedBank>> getSavedBank() async {
    final url = AppApis.getSavedBank;

    var response = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${localPreferences.token.val}'},
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getSavedBankFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<String> saveCard(reqBody) async {
    final url = AppApis.saveCard;

    var response = await client.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json ; charset=UTF-8'},
      body: jsonEncode(reqBody),
    );
    print('Response  : ${jsonEncode(reqBody)}');
    print('Response Status Code : ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body)["message"];
    } else {
      throw const HttpException('Something went wrong!');
    }
  }

  static Future<List<GetSavedCard>> getSavedCard() async {
    final url = AppApis.getSavedCard;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getSavedCardFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<List<GetAllBridges>> getAllBridges() async {
    final url = AppApis.getAllBridges;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8', 'Authorization': 'Bearer ${localPreferences.token.val}'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllBridgesFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<List<GetAllVehicleClasses>> getAllVehicleClasses() async {
    final url = AppApis.getAllVehicleClasses;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8', 'Authorization': 'Bearer ${localPreferences.token.val}'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllVehicleClassesFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<List<GetAllVehicleZones>> getAllVehicleZones() async {
    final url = AppApis.getAllVehicleZones;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8', 'Authorization': 'Bearer ${localPreferences.token.val}'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllVehicleZonesFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<String> registerVehicles(reqBody) async {
    final url = AppApis.registerVehicles;
    print('Token:${localPreferences.token.val}');
    var response = await client.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
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

  static Future<List<GetRegisteredVehicles>> getRegisteredVehicles() async {
    final url = AppApis.getAllRegisteredVehicles;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8', 'Authorization': 'Bearer ${localPreferences.token.val}'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getRegisteredVehiclesFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }

  static Future<List<GetAllOrganizationTypes>> getAllOrganizationTypes() async {
    final url = AppApis.getAllOrganizationTypes;

    var response = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8', 'Authorization': 'Bearer ${localPreferences.token.val}'}
    );
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      return getAllOrganizationTypesFromJson(response.body);
    } else {
      throw HttpException('Something went wrong');
    }
  }
}



