// // To parse this JSON data, do
// //
// //     final loginResponse = loginResponseFromJson(jsonString);
//
// import 'dart:convert';
//
// LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
//
// String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
//
// class LoginResponse {
//   String jwt;
//   User user;
//   String role;
//   String status;
//   String message;
//   int customerId;
//
//   LoginResponse({
//     required this.jwt,
//     required this.user,
//     required this.role,
//     required this.status,
//     required this.message,
//     required this.customerId,
//   });
//
//   factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
//     jwt: json["jwt"]??"",
//     user: User.fromJson(json["user"]),
//     role: json["role"]??"",
//     status: json["status"]??"",
//     message: json["message"]??"",
//     customerId: json["customerId"]??0,
//   );
//
//   Map<String, dynamic> toJson() => {
//     "jwt": jwt,
//     "user": user.toJson(),
//     "role": role,
//     "status": status,
//     "message": message,
//     "customerId": customerId,
//   };
// }
//
// class User {
//   String fullName;
//   String citizenship;
//   String nationalIdentityNo;
//   String imagePath;
//   String baseString;
//   int isVarified;
//   int isActive;
//   int genderId;
//   Gender gender;
//   int userTypeId;
//   UserType userType;
//   String id;
//   String userName;
//   String normalizedUserName;
//   String email;
//   String normalizedEmail;
//
//   User({
//     required this.fullName,
//     required this.citizenship,
//     required this.nationalIdentityNo,
//     required this.imagePath,
//     required this.baseString,
//     required this.isVarified,
//     required this.isActive,
//     required this.genderId,
//     required this.gender,
//     required this.userTypeId,
//     required this.userType,
//     required this.id,
//     required this.userName,
//     required this.normalizedUserName,
//     required this.email,
//     required this.normalizedEmail,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     fullName: json["fullName"]??"",
//     citizenship: json["citizenship"]??"",
//     nationalIdentityNo: json["nationalIdentityNo"]??"",
//     imagePath: json["imagePath"]??"",
//     baseString: json["baseString"]??"",
//     isVarified: json["isVarified"]??0,
//     isActive: json["isActive"]??0,
//     genderId: json["genderId"]??0,
//     gender: Gender.fromJson(json["gender"]),
//     userTypeId: json["userTypeId"]??0,
//     userType: UserType.fromJson(json["userType"]),
//     id: json["id"]??"",
//     userName: json["userName"]??"",
//     normalizedUserName: json["normalizedUserName"]??"",
//     email: json["email"]??"",
//     normalizedEmail: json["normalizedEmail"]??"",
//   );
//
//   Map<String, dynamic> toJson() => {
//     "fullName": fullName,
//     "citizenship": citizenship,
//     "nationalIdentityNo": nationalIdentityNo,
//     "imagePath": imagePath,
//     "baseString": baseString,
//     "isVarified": isVarified,
//     "isActive": isActive,
//     "genderId": genderId,
//     "gender": gender.toJson(),
//     "userTypeId": userTypeId,
//     "userType": userType.toJson(),
//     "id": id,
//     "userName": userName,
//     "normalizedUserName": normalizedUserName,
//     "email": email,
//     "normalizedEmail": normalizedEmail,
//   };
// }
//
// class Gender {
//   String name;
//
//   Gender({
//     required this.name,
//   });
//
//   factory Gender.fromJson(Map<String, dynamic> json) => Gender(
//     name: json["name"]??"",
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//   };
// }
//
// class UserType {
//   String typeName;
//   bool isActive;
//   int id;
//
//   UserType({
//     required this.typeName,
//     required this.isActive,
//     required this.id,
//   });
//
//   factory UserType.fromJson(Map<String, dynamic> json) => UserType(
//     typeName: json["typeName"]??"",
//     isActive: json["isActive"]??false,
//     id: json["id"]??0,
//   );
//
//   Map<String, dynamic> toJson() => {
//     "typeName": typeName,
//     "isActive": isActive,
//     "id": id,
//   };
// }



// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String jwt;
  User user;
  String role;
  String status;
  String message;
  int customerId;

  LoginResponse({
    required this.jwt,
    required this.user,
    required this.role,
    required this.status,
    required this.message,
    required this.customerId,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    jwt: json["jwt"]??"",
    user: User.fromJson(json["user"]),
    role: json["role"]??"",
    status: json["status"]??"",
    message: json["message"]??"",
    customerId: json["customerId"]??0,
  );

  Map<String, dynamic> toJson() => {
    "jwt": jwt,
    "user": user.toJson(),
    "role": role,
    "status": status,
    "message": message,
    "customerId": customerId,
  };
}

class User {
  String fullName;
  String citizenship;
  String nationalIdentityNo;
  String imagePath;
  String baseString;
  int isVarified;
  int isActive;
  int genderId;
  Gender gender;
  int userTypeId;
  UserType userType;
  String id;
  String userName;
  String normalizedUserName;
  String email;
  String normalizedEmail;

  User({
    required this.fullName,
    required this.citizenship,
    required this.nationalIdentityNo,
    required this.imagePath,
    required this.baseString,
    required this.isVarified,
    required this.isActive,
    required this.genderId,
    required this.gender,
    required this.userTypeId,
    required this.userType,
    required this.id,
    required this.userName,
    required this.normalizedUserName,
    required this.email,
    required this.normalizedEmail,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    fullName: json["fullName"]??"",
    citizenship: json["citizenship"]??"",
    nationalIdentityNo: json["nationalIdentityNo"]??"",
    imagePath: json["imagePath"]??"",
    baseString: json["baseString"]??"",
    isVarified: json["isVarified"]??0,
    isActive: json["isActive"]??0,
    genderId: json["genderId"]??0,
    gender: Gender.fromJson(json["gender"]),
    userTypeId: json["userTypeId"]??0,
    userType: UserType.fromJson(json["userType"]),
    id: json["id"]??"",
    userName: json["userName"]??"",
    normalizedUserName: json["normalizedUserName"]??"",
    email: json["email"]??"",
    normalizedEmail: json["normalizedEmail"]??"",
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "citizenship": citizenship,
    "nationalIdentityNo": nationalIdentityNo,
    "imagePath": imagePath,
    "baseString": baseString,
    "isVarified": isVarified,
    "isActive": isActive,
    "genderId": genderId,
    "gender": gender.toJson(),
    "userTypeId": userTypeId,
    "userType": userType.toJson(),
    "id": id,
    "userName": userName,
    "normalizedUserName": normalizedUserName,
    "email": email,
    "normalizedEmail": normalizedEmail,
  };
}

class Gender {
  String name;

  Gender({
    required this.name,
  });

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
    name: json["name"]??"",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

class UserType {
  String typeName;
  bool isActive;
  int id;

  UserType({
    required this.typeName,
    required this.isActive,
    required this.id,
  });

  factory UserType.fromJson(Map<String, dynamic> json) => UserType(
    typeName: json["typeName"]??"",
    isActive: json["isActive"]??false,
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "typeName": typeName,
    "isActive": isActive,
    "id": id,
  };
}
