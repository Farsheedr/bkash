// To parse this JSON data, do
//
//     final getRegisteredVehicles = getRegisteredVehiclesFromJson(jsonString);

import 'dart:convert';

List<GetRegisteredVehicles> getRegisteredVehiclesFromJson(String str) => List<GetRegisteredVehicles>.from(json.decode(str).map((x) => GetRegisteredVehicles.fromJson(x)));

String getRegisteredVehiclesToJson(List<GetRegisteredVehicles> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetRegisteredVehicles {
  int zoneId;
  ClassInfo zone;
  int classInfoId;
  ClassInfo classInfo;
  String vehicleRegNo;
  String vehicleChassisNo;
  String name;
  int customerId;
  dynamic customer;
  int id;
  int isDelete;
  DateTime createdAt;
  dynamic updatedAt;
  String createdBy;
  dynamic updatedBy;

  GetRegisteredVehicles({
    required this.zoneId,
    required this.zone,
    required this.classInfoId,
    required this.classInfo,
    required this.vehicleRegNo,
    required this.vehicleChassisNo,
    required this.name,
    required this.customerId,
    required this.customer,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory GetRegisteredVehicles.fromJson(Map<String, dynamic> json) => GetRegisteredVehicles(
    zoneId: json["zoneId"]??0,
    zone: ClassInfo.fromJson(json["zone"]),
    classInfoId: json["classInfoId"]??0,
    classInfo: ClassInfo.fromJson(json["classInfo"]),
    vehicleRegNo: json["vehicleRegNo"]??"",
    vehicleChassisNo: json["vehicleChassisNo"]??"",
    name: json["name"]??"",
    customerId: json["customerId"]??0,
    customer: json["customer"]??"",
    id: json["id"]??0,
    isDelete: json["isDelete"]??0,
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"]??"",
    createdBy: json["createdBy"]??"",
    updatedBy: json["updatedBy"]??"",
  );

  Map<String, dynamic> toJson() => {
    "zoneId": zoneId,
    "zone": zone.toJson(),
    "classInfoId": classInfoId,
    "classInfo": classInfo.toJson(),
    "vehicleRegNo": vehicleRegNo,
    "vehicleChassisNo": vehicleChassisNo,
    "name": name,
    "customerId": customerId,
    "customer": customer,
    "id": id,
    "isDelete": isDelete,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
  };
}

class ClassInfo {
  String name;
  int id;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String updatedBy;

  ClassInfo({
    required this.name,
    required this.id,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
  });

  factory ClassInfo.fromJson(Map<String, dynamic> json) => ClassInfo(
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
