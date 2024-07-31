// To parse this JSON data, do
//
//     final saveBank = saveBankFromJson(jsonString);

import 'dart:convert';

SaveBank saveBankFromJson(String str) => SaveBank.fromJson(json.decode(str));

String saveBankToJson(SaveBank data) => json.encode(data.toJson());

class SaveBank {
  int id;
  int customerId;
  int bankId;
  String accountNo;
  String accountTitle;

  SaveBank({
    required this.id,
    required this.customerId,
    required this.bankId,
    required this.accountNo,
    required this.accountTitle,
  });

  factory SaveBank.fromJson(Map<String, dynamic> json) => SaveBank(
    id: json["id"]??0,
    customerId: json["customerId"]??0,
    bankId: json["bankId"]??0,
    accountNo: json["accountNo"]??"",
    accountTitle: json["accountTitle"]??"",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customerId": customerId,
    "bankId": bankId,
    "accountNo": accountNo,
    "accountTitle": accountTitle,
  };
}
