// To parse this JSON data, do
//
//     final getAllVehicleZones = getAllVehicleZonesFromJson(jsonString);

import 'dart:convert';

List<GetAllVehicleZones> getAllVehicleZonesFromJson(String str) => List<GetAllVehicleZones>.from(json.decode(str).map((x) => GetAllVehicleZones.fromJson(x)));

String getAllVehicleZonesToJson(List<GetAllVehicleZones> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllVehicleZones {
  String name;
  int id;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String updatedBy;

  GetAllVehicleZones({
    required this.name,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetAllVehicleZones.fromJson(Map<String, dynamic> json) => GetAllVehicleZones(
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
