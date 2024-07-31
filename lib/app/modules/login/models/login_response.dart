// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String jwt;
  User user;
  dynamic role;
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
  dynamic nationalIdentityType;
  String nationalIdentityNo;
  dynamic imagePath;
  dynamic baseString;
  int isVarified;
  String otpCode;
  dynamic otpExpire;
  DateTime lastPasswordChange;
  dynamic isEmailVarified;
  dynamic emailOtpCode;
  dynamic emailVerifiedDate;
  int isActive;
  dynamic isChangePassword;
  DateTime createdAt;
  dynamic createdBy;
  dynamic updatedAt;
  dynamic updatedBy;
  int genderId;
  Gender gender;
  int userTypeId;
  UserType userType;
  dynamic token;
  String id;
  String userName;
  String normalizedUserName;
  String email;
  String normalizedEmail;
  bool emailConfirmed;
  String passwordHash;
  String securityStamp;
  String concurrencyStamp;
  String phoneNumber;
  bool phoneNumberConfirmed;
  bool twoFactorEnabled;
  dynamic lockoutEnd;
  bool lockoutEnabled;
  int accessFailedCount;

  User({
    required this.fullName,
    required this.citizenship,
    required this.nationalIdentityType,
    required this.nationalIdentityNo,
    required this.imagePath,
    required this.baseString,
    required this.isVarified,
    required this.otpCode,
    required this.otpExpire,
    required this.lastPasswordChange,
    required this.isEmailVarified,
    required this.emailOtpCode,
    required this.emailVerifiedDate,
    required this.isActive,
    required this.isChangePassword,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
    required this.updatedBy,
    required this.genderId,
    required this.gender,
    required this.userTypeId,
    required this.userType,
    required this.token,
    required this.id,
    required this.userName,
    required this.normalizedUserName,
    required this.email,
    required this.normalizedEmail,
    required this.emailConfirmed,
    required this.passwordHash,
    required this.securityStamp,
    required this.concurrencyStamp,
    required this.phoneNumber,
    required this.phoneNumberConfirmed,
    required this.twoFactorEnabled,
    required this.lockoutEnd,
    required this.lockoutEnabled,
    required this.accessFailedCount,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    fullName: json["fullName"]??"",
    citizenship: json["citizenship"]??"",
    nationalIdentityType: json["nationalIdentityType"]??"",
    nationalIdentityNo: json["nationalIdentityNo"]??"",
    imagePath: json["imagePath"]??"",
    baseString: json["baseString"]??"",
    isVarified: json["isVarified"]??0,
    otpCode: json["otpCode"]??"",
    otpExpire: json["otpExpire"]??"",
    lastPasswordChange: DateTime.parse(json["lastPasswordChange"]),
    isEmailVarified: json["isEmailVarified"]??"",
    emailOtpCode: json["emailOtpCode"]??"",
    emailVerifiedDate: json["emailVerifiedDate"]??"",
    isActive: json["isActive"]??0,
    isChangePassword: json["isChangePassword"]??"",
    createdAt: DateTime.parse(json["createdAt"]),
    createdBy: json["createdBy"]??"",
    updatedAt: json["updatedAt"]??"",
    updatedBy: json["updatedBy"]??"",
    genderId: json["genderId"]??0,
    gender: Gender.fromJson(json["gender"]),
    userTypeId: json["userTypeId"]??"",
    userType: UserType.fromJson(json["userType"]),
    token: json["token"]??"",
    id: json["id"]??"",
    userName: json["userName"]??"",
    normalizedUserName: json["normalizedUserName"]??"",
    email: json["email"]??"",
    normalizedEmail: json["normalizedEmail"]??"",
    emailConfirmed: json["emailConfirmed"]??false,
    passwordHash: json["passwordHash"]??"",
    securityStamp: json["securityStamp"]??"",
    concurrencyStamp: json["concurrencyStamp"]??"",
    phoneNumber: json["phoneNumber"]??"",
    phoneNumberConfirmed: json["phoneNumberConfirmed"]??0,
    twoFactorEnabled: json["twoFactorEnabled"]??0,
    lockoutEnd: json["lockoutEnd"]??"",
    lockoutEnabled: json["lockoutEnabled"]??false,
    accessFailedCount: json["accessFailedCount"]??0,
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "citizenship": citizenship,
    "nationalIdentityType": nationalIdentityType,
    "nationalIdentityNo": nationalIdentityNo,
    "imagePath": imagePath,
    "baseString": baseString,
    "isVarified": isVarified,
    "otpCode": otpCode,
    "otpExpire": otpExpire,
    "lastPasswordChange": lastPasswordChange.toIso8601String(),
    "isEmailVarified": isEmailVarified,
    "emailOtpCode": emailOtpCode,
    "emailVerifiedDate": emailVerifiedDate,
    "isActive": isActive,
    "isChangePassword": isChangePassword,
    "createdAt": createdAt.toIso8601String(),
    "createdBy": createdBy,
    "updatedAt": updatedAt,
    "updatedBy": updatedBy,
    "genderId": genderId,
    "gender": gender.toJson(),
    "userTypeId": userTypeId,
    "userType": userType.toJson(),
    "token": token,
    "id": id,
    "userName": userName,
    "normalizedUserName": normalizedUserName,
    "email": email,
    "normalizedEmail": normalizedEmail,
    "emailConfirmed": emailConfirmed,
    "passwordHash": passwordHash,
    "securityStamp": securityStamp,
    "concurrencyStamp": concurrencyStamp,
    "phoneNumber": phoneNumber,
    "phoneNumberConfirmed": phoneNumberConfirmed,
    "twoFactorEnabled": twoFactorEnabled,
    "lockoutEnd": lockoutEnd,
    "lockoutEnabled": lockoutEnabled,
    "accessFailedCount": accessFailedCount,
  };
}

class Gender {
  String name;
  dynamic remarks;
  dynamic status;
  int id;
  dynamic isDelete;
  dynamic createdAt;
  DateTime updatedAt;
  dynamic createdBy;
  String updatedBy;

  Gender({
    required this.name,
    required this.remarks,
    required this.status,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
    name: json["name"]??"",
    remarks: json["remarks"]??"",
    status: json["status"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??"",
    createdAt: json["createdAt"]??"",
    updatedAt: DateTime.parse(json["updatedAt"]),
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "remarks": remarks,
    "status": status,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt,
    "updatedAt": updatedAt.toIso8601String(),
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}

class UserType {
  String typeName;
  bool isActive;
  int id;
  dynamic isDelete;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;

  UserType({
    required this.typeName,
    required this.isActive,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory UserType.fromJson(Map<String, dynamic> json) => UserType(
    typeName: json["typeName"]??"",
    isActive: json["isActive"]??true,
    id: json["id"]??0,
    isDelete: json["isDelete"]??"",
    createdAt: json["createdAt"]??"",
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "typeName": typeName,
    "isActive": isActive,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
