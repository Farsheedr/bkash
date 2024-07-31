// To parse this JSON data, do
//
//     final getAllBridges = getAllBridgesFromJson(jsonString);

import 'dart:convert';

List<GetAllBridges> getAllBridgesFromJson(String str) => List<GetAllBridges>.from(json.decode(str).map((x) => GetAllBridges.fromJson(x)));

String getAllBridgesToJson(List<GetAllBridges> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllBridges {
  String name;
  String area;
  int id;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String updatedBy;

  GetAllBridges({
    required this.name,
    required this.area,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetAllBridges.fromJson(Map<String, dynamic> json) => GetAllBridges(
    name: json["name"]??"",
    area: json["area"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "area": area,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}
