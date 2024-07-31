// To parse this JSON data, do
//
//     final getSavedCard = getSavedCardFromJson(jsonString);

import 'dart:convert';

List<GetSavedCard> getSavedCardFromJson(String str) => List<GetSavedCard>.from(json.decode(str).map((x) => GetSavedCard.fromJson(x)));

String getSavedCardToJson(List<GetSavedCard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetSavedCard {
  int customerId;
  Customer customer;
  String cardNumber;
  String expiryDate;
  String cardHolderName;
  String privateNumber;
  int id;
  int isDelete;
  DateTime createdAt;
  dynamic updatedAt;
  String createdBy;
  dynamic updatedBy;

  GetSavedCard({
    required this.customerId,
    required this.customer,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.privateNumber,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetSavedCard.fromJson(Map<String, dynamic> json) => GetSavedCard(
    customerId: json["customerId"]??0,
    customer: Customer.fromJson(json["customer"]),
    cardNumber: json["cardNumber"]??"",
    expiryDate: json["expiryDate"]??"",
    cardHolderName: json["cardHolderName"]??"",
    privateNumber: json["privateNumber"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "customerId": customerId,
    "customer": customer.toJson(),
    "cardNumber": cardNumber,
    "expiryDate": expiryDate,
    "cardHolderName": cardHolderName,
    "privateNumber": privateNumber,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}

class Customer {
  String customerRCode;
  String customerNameEng;
  String customerNameBan;
  String fatherNameEng;
  String fatherNameBan;
  String motherNameEng;
  String motherNameBan;
  DateTime dateOfBirth;
  String mobileNo;
  String email;
  String nidNo;
  String maritalStatus;
  String spouseNameEng;
  String spouseNameBan;
  String spouseMobileNo;
  dynamic districtId;
  dynamic district;
  dynamic upazilaId;
  dynamic upazila;
  int genderId;
  dynamic gender;
  String applicationUserId;
  dynamic applicationUser;
  num lastCreditScore;
  String tin;
  int id;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String updatedBy;

  Customer({
    required this.customerRCode,
    required this.customerNameEng,
    required this.customerNameBan,
    required this.fatherNameEng,
    required this.fatherNameBan,
    required this.motherNameEng,
    required this.motherNameBan,
    required this.dateOfBirth,
    required this.mobileNo,
    required this.email,
    required this.nidNo,
    required this.maritalStatus,
    required this.spouseNameEng,
    required this.spouseNameBan,
    required this.spouseMobileNo,
    required this.districtId,
    required this.district,
    required this.upazilaId,
    required this.upazila,
    required this.genderId,
    required this.gender,
    required this.applicationUserId,
    required this.applicationUser,
    required this.lastCreditScore,
    required this.tin,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    customerRCode: json["customerRCode"]??"",
    customerNameEng: json["customerNameEng"]??"",
    customerNameBan: json["customerNameBan"]??"",
    fatherNameEng: json["fatherNameEng"]??"",
    fatherNameBan: json["fatherNameBan"]??"",
    motherNameEng: json["motherNameEng"]??"",
    motherNameBan: json["motherNameBan"]??"",
    dateOfBirth: DateTime.parse(json["dateOfBirth"]),
    mobileNo: json["mobileNo"]??"",
    email: json["email"]??"",
    nidNo: json["nidNo"]??"",
    maritalStatus: json["maritalStatus"]??"",
    spouseNameEng: json["spouseNameEng"]??"",
    spouseNameBan: json["spouseNameBan"]??"",
    spouseMobileNo: json["spouseMobileNo"]??"",
    districtId: json["districtId"]??"",
    district: json["district"]??"",
    upazilaId: json["upazilaId"]??"",
    upazila: json["upazila"]??"",
    genderId: json["genderId"]??0,
    gender: json["gender"]??"",
    applicationUserId: json["applicationUserId"]??"",
    applicationUser: json["applicationUser"]??"",
    lastCreditScore: json["lastCreditScore"]??0,
    tin: json["tin"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "customerRCode": customerRCode,
    "customerNameEng": customerNameEng,
    "customerNameBan": customerNameBan,
    "fatherNameEng": fatherNameEng,
    "fatherNameBan": fatherNameBan,
    "motherNameEng": motherNameEng,
    "motherNameBan": motherNameBan,
    "dateOfBirth": dateOfBirth.toIso8601String(),
    "mobileNo": mobileNo,
    "email": email,
    "nidNo": nidNo,
    "maritalStatus": maritalStatus,
    "spouseNameEng": spouseNameEng,
    "spouseNameBan": spouseNameBan,
    "spouseMobileNo": spouseMobileNo,
    "districtId": districtId,
    "district": district,
    "upazilaId": upazilaId,
    "upazila": upazila,
    "genderId": genderId,
    "gender": gender,
    "applicationUserId": applicationUserId,
    "applicationUser": applicationUser,
    "lastCreditScore": lastCreditScore,
    "tin": tin,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
