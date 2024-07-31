// To parse this JSON data, do
//
//     final saveCard = saveCardFromJson(jsonString);

import 'dart:convert';

List<SaveCard> saveCardFromJson(String str) => List<SaveCard>.from(json.decode(str).map((x) => SaveCard.fromJson(x)));

String saveCardToJson(List<SaveCard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SaveCard {
  int customerId;
  dynamic customer;
  int bankId;
  Bank bank;
  String accountNo;
  String accountTitle;
  int id;
  int isDelete;
  DateTime createdAt;
  dynamic updatedAt;
  String createdBy;
  dynamic updatedBy;

  SaveCard({
    required this.customerId,
    required this.customer,
    required this.bankId,
    required this.bank,
    required this.accountNo,
    required this.accountTitle,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory SaveCard.fromJson(Map<String, dynamic> json) => SaveCard(
    customerId: json["customerId"]??"",
    customer: json["customer"]??"",
    bankId: json["bankId"]??"",
    bank: Bank.fromJson(json["bank"]),
    accountNo: json["accountNo"]??"",
    accountTitle: json["accountTitle"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??"",
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "customerId": customerId,
    "customer": customer,
    "bankId": bankId,
    "bank": bank.toJson(),
    "accountNo": accountNo,
    "accountTitle": accountTitle,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}

class Bank {
  String bankName;
  dynamic web;
  dynamic phone;
  dynamic logoUrl;
  int bankingType;
  int accNumberLength;
  num minAddMoneyAmount;
  int id;
  int isDelete;
  dynamic createdAt;
  DateTime? updatedAt;
  dynamic createdBy;
  String updatedBy;

  Bank({
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

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
    bankName: json["bankName"]??"",
    web: json["web"]??"",
    phone: json["phone"]??"",
    logoUrl: json["logoUrl"]??"",
    bankingType: json["bankingType"]??0,
    accNumberLength: json["accNumberLength"]??0,
    minAddMoneyAmount: json["minAddMoneyAmount"]??0,
    id: json["id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: json["createdAt"]??"",
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
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
    "updatedAt": updatedAt?.toIso8601String(),
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
