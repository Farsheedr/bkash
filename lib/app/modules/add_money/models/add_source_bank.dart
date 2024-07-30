// To parse this JSON data, do
//
//     final addSourceBank = addSourceBankFromJson(jsonString);

import 'dart:convert';

AddSourceBank addSourceBankFromJson(String str) => AddSourceBank.fromJson(json.decode(str));

String addSourceBankToJson(AddSourceBank data) => json.encode(data.toJson());

class AddSourceBank {
  int id;
  String bankName;
  String web;
  String phone;
  String logoUrl;
  int bankingType;
  int accNumberLength;
  num minAddMoneyAmount;

  AddSourceBank({
    required this.id,
    required this.bankName,
    required this.web,
    required this.phone,
    required this.logoUrl,
    required this.bankingType,
    required this.accNumberLength,
    required this.minAddMoneyAmount,
  });

  factory AddSourceBank.fromJson(Map<String, dynamic> json) => AddSourceBank(
    id: json["id"]??0,
    bankName: json["bankName"]??"",
    web: json["web"]??"",
    phone: json["phone"]??"",
    logoUrl: json["logoUrl"]??"",
    bankingType: json["bankingType"]??0,
    accNumberLength: json["accNumberLength"]??0,
    minAddMoneyAmount: json["minAddMoneyAmount"]??0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "bankName": bankName,
    "web": web,
    "phone": phone,
    "logoUrl": logoUrl,
    "bankingType": bankingType,
    "accNumberLength": accNumberLength,
    "minAddMoneyAmount": minAddMoneyAmount,
  };
}
