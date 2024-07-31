import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;



import '../../../data/preference_data/local_preference.dart';
import '../../home/widgets/negativeSnackBar.dart';
import '../models/login_response.dart';

class LoginProvider extends GetConnect{
  @override
  void onInit(){
    httpClient.baseUrl = 'https://eximapi.opuserp.com';
  }
  LocalPreferences localPreferences = Get.put(LocalPreferences());
  static var client= http.Client();


  Future<LoginResponse>login(String username, String password)async{
  final url = 'https://eximapi.opuserp.com/api/Auth/LogIn';
  var response = await client.post(Uri.parse(url),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"mobile": username, "password": password,"rememberMe":"" }));


   debugPrint("req code => ${response.statusCode}");
    debugPrint("req body => $username---$password");
    debugPrint("response body => ${response.body}");

  // try{
  //   final response= await post(url, body);
  //   print('Response Status Code:${response.statusCode}');
  //   print('Response Body:${response.body}');

    if(response.statusCode==200){
      debugPrint("-----------------4->${response.body}");


      return loginResponseFromJson(response.body);
    } else if (response.statusCode == 502) {
      negativeSnackbar(  message: 'Unable to Access Server. Please, Try Again Later.');
      throw const HttpException('error');
    } else if (response.statusCode == 400) {
      negativeSnackbar( message:  "Username or Password is Invalid");
      throw const HttpException('Username or Password is invalid');
    } else {
      negativeSnackbar(message: "Something Wrong");
      throw const HttpException('Something went wrong!');
    }
  }

}


