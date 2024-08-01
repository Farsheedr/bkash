// To parse this JSON data, do
//
//     final getAllOrganizationTypes = getAllOrganizationTypesFromJson(jsonString);

import 'dart:convert';

List<GetAllOrganizationTypes> getAllOrganizationTypesFromJson(String str) => List<GetAllOrganizationTypes>.from(json.decode(str).map((x) => GetAllOrganizationTypes.fromJson(x)));

String getAllOrganizationTypesToJson(List<GetAllOrganizationTypes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllOrganizationTypes {
  String code;
  String name;
  Logo logo;
  int status;
  int id;
  dynamic isDelete;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;

  GetAllOrganizationTypes({
    required this.code,
    required this.name,
    required this.logo,
    required this.status,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetAllOrganizationTypes.fromJson(Map<String, dynamic> json) => GetAllOrganizationTypes(
    code: json["code"]??"",
    name: json["name"]??"",
    logo: logoValues.map[json["logo"]]!,
    status: json["status"]??0,
    id: json["id"]??0,
    isDelete: json["isDelete"]??"",
    createdAt: json["createdAt"]??"",
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "logo": logoValues.reverse[logo],
    "status": status,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}

enum Logo {
  ELECTRICITY_PNG
}

final logoValues = EnumValues({
  "electricity.png": Logo.ELECTRICITY_PNG
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
