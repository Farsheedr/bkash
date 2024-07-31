// To parse this JSON data, do
//
//     final getAllVehicleClasses = getAllVehicleClassesFromJson(jsonString);

import 'dart:convert';

List<GetAllVehicleClasses> getAllVehicleClassesFromJson(String str) => List<GetAllVehicleClasses>.from(json.decode(str).map((x) => GetAllVehicleClasses.fromJson(x)));

String getAllVehicleClassesToJson(List<GetAllVehicleClasses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllVehicleClasses {
  String name;
  int id;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String updatedBy;

  GetAllVehicleClasses({
    required this.name,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetAllVehicleClasses.fromJson(Map<String, dynamic> json) => GetAllVehicleClasses(
    name: json["name"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
