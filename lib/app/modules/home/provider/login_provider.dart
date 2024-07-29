import 'package:get/get.dart';

import '../models/login_response.dart';

class LoginProvider extends GetConnect {


  // Future<LoginResponse> login(String mobile, String password) async {
  //   final url = 'https://fsiblapi.opuserp.com/api/Auth/LogIn';
  //   final body = {
  //     'mobile': mobile,
  //     'password': password,
  //     'rememberMe': "",
  //   };
  //   print('Sending request to $url with body: $body');
  //
  //   try {
  //     final response = await post(url, body);
  //     print('Response Status Code: ${response.statusCode}');
  //     print('Response Body: ${response.body}');
  //
  //     if (response.statusCode == 200) {
  //       // Handle successful login
  //       final responseData = response.body;
  //       // Process the response data
  //       Get.snackbar('Success', 'Login successful');
  //       return loginResponseFromJson(response.body);
  //     } else {
  //       // Handle error
  //       final errorData = response.body;
  //       // Process the error data
  //       throw Exception('Failed to login: ${errorData['message']}');
  //     }
  //   } catch (error) {
  //     Get.snackbar('Error', error.toString());
  //     throw Exception('Failed to login: ');
  //   }
  // }
  // Future<LoginResponse>login(String user, String password)async{
  //   final url = 'https://fsiblapi.opuserp.com/api/Auth/AuthToken';
  //   var response = await client.post(Uri.parse(url)
  //   print('Sending request to $url with body: $body');
  //
  //   try{
  //     final response= await post(url, body);
  //     print('Response Status Code:${response.statusCode}');
  //     print('Response Body:${response.body}');
  //
  //     if(response.statusCode==200){
  //       final responseData= response.body;
  //       Get.snackbar("Success", "Login Successful");
  //       return loginResponseFromJson(response.body);
  //
  //     }else{
  //       final errorData = response.body;
  //       throw Exception('Failed to login:${errorData['message']}');
  //     }
  //   } catch(error){
  //
  //         Get.snackbar('Error', error.toString());
  //          throw Exception('Failed to login: ');
  //        }
  //
  //   }


  }

