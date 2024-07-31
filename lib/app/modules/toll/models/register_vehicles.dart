// To parse this JSON data, do
//
//     final registerVehicles = registerVehiclesFromJson(jsonString);

import 'dart:convert';

RegisterVehicles registerVehiclesFromJson(String str) => RegisterVehicles.fromJson(json.decode(str));

String registerVehiclesToJson(RegisterVehicles data) => json.encode(data.toJson());

class RegisterVehicles {
  int id;
  int zoneId;
  int classInfoId;
  String vehicleRegNo;
  String vehicleChassisNo;
  String name;
  int customerId;

  RegisterVehicles({
    required this.id,
    required this.zoneId,
    required this.classInfoId,
    required this.vehicleRegNo,
    required this.vehicleChassisNo,
    required this.name,
    required this.customerId,
  });

  factory RegisterVehicles.fromJson(Map<String, dynamic> json) => RegisterVehicles(
    id: json["id"]??0,
    zoneId: json["zoneId"]??0,
    classInfoId: json["classInfoId"]??0,
    vehicleRegNo: json["vehicleRegNo"]??"",
    vehicleChassisNo: json["vehicleChassisNo"]??0,
    name: json["name"]??"",
    customerId: json["customerId"]??0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "zoneId": zoneId,
    "classInfoId": classInfoId,
    "vehicleRegNo": vehicleRegNo,
    "vehicleChassisNo": vehicleChassisNo,
    "name": name,
    "customerId": customerId,
  };
}
