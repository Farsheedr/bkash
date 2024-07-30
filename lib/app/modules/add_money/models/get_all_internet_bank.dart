// To parse this JSON data, do
//
//     final getAllInternetBankForAddMoney = getAllInternetBankForAddMoneyFromJson(jsonString);

import 'dart:convert';

List<GetAllInternetBankForAddMoney> getAllInternetBankForAddMoneyFromJson(String str) => List<GetAllInternetBankForAddMoney>.from(json.decode(str).map((x) => GetAllInternetBankForAddMoney.fromJson(x)));

String getAllInternetBankForAddMoneyToJson(List<GetAllInternetBankForAddMoney> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllInternetBankForAddMoney {
  String bankName;
  String web;
  String phone;
  String logoUrl;
  int bankingType;
  int accNumberLength;
  num minAddMoneyAmount;
  int id;
  dynamic isDelete;
  String createdAt;
  String updatedAt;
  String createdBy;
  String updatedBy;

  GetAllInternetBankForAddMoney({
    required this.bankName,
    required this.web,
    required this.phone,
    required this.logoUrl,
    required this.bankingType,
    required this.accNumberLength,
    required this.minAddMoneyAmount,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetAllInternetBankForAddMoney.fromJson(Map<String, dynamic> json) => GetAllInternetBankForAddMoney(
    bankName: json["bankName"]??"",
    web: json["web"]??"",
    phone: json["phone"]??"",
    logoUrl: json["logoUrl"]??"",
    bankingType: json["bankingType"]??0,
    accNumberLength: json["accNumberLength"]??0,
    minAddMoneyAmount: json["minAddMoneyAmount"]??0,
    id: json["id"]??0,
    isDelete: json["isDelete"]??"",
    createdAt: json["createdAt"]??"",
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "bankName": bankName,
    "web": web,
    "phone": phone,
    "logoUrl": logoUrl,
    "bankingType": bankingType,
    "accNumberLength": accNumberLength,
    "minAddMoneyAmount": minAddMoneyAmount,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
