import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/toll/models/get_all_vehicle_zones.dart';

import '../../../data/preference_data/local_preference.dart';
import '../../../data/preference_data/remote_services.dart';
import '../../../routes/app_pages.dart';
import '../../home/widgets/negativeSnackBar.dart';
import '../../home/widgets/positive_snackbar.dart';
import '../models/get_all_bridges.dart';
import '../models/get_all_registered_vehicles.dart';
import '../models/get_all_vehicle_classes.dart';

class TollController extends GetxController {
  final localPreferences = Get.put(LocalPreferences());

  RxBool isLoading= false.obs;
  final TextEditingController registrationController = TextEditingController();
  final TextEditingController chassisController = TextEditingController();
  final TextEditingController vehicleController = TextEditingController();
  var selectedName = "".obs;
  var vehicleRegNo = "".obs;
  var vehicleChassisNo = "".obs;
  var name = "".obs;
  var zoneId = 0.obs;
  var classInfoId = 0.obs;




  final count = 0.obs;
  @override
  void onInit() {
    getAllBridges();
    getAllVehicleClasses();
    getAllVehicleZones();
    getAllRegisteredVehicles();


    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  var bridgeList = <GetAllBridges>[].obs;
  var vehicleClassList = <GetAllVehicleClasses>[].obs;
  var vehicleZoneList = <GetAllVehicleZones>[].obs;
  var registeredVehiclesList = <GetRegisteredVehicles>[].obs;



  void getAllBridges() async{
    print('============getBridgeList=============');
    isLoading.value = true;
    try{
      await RemoteServices.getAllBridges().then((value) {
        bridgeList.value=value;




        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }
  void getAllVehicleClasses() async{
    print('============getVehicleList=============');
    isLoading.value = true;
    try{
      await RemoteServices.getAllVehicleClasses().then((value) {
        vehicleClassList.value=value;



        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }
  void getAllVehicleZones() async{
    print('============getVehicleZones=============');
    isLoading.value = true;
    try{
      await RemoteServices.getAllVehicleZones().then((value) {
        vehicleZoneList.value=value;



        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }
  void registerVehicles() async{
    print('=======saveBank=======');

    var reqBody = {
      "id": 0,
      "zoneId": zoneId.value,
      "classInfoId": classInfoId.value,
      "vehicleRegNo": vehicleRegNo.value,
      "vehicleChassisNo": vehicleChassisNo.value,
      "name": name.value,
      "customerId": localPreferences.customerId.val,
    };

    try {
      isLoading.value = true;
      await RemoteServices.registerVehicles(reqBody).then((value) {
        print("value====>>> $value");
        if(value.contains("successfully")){
          snackbarPositive("Successful Registration");
          Get.toNamed(AppPages.INITIAL);
        } else {
          negativeSnackbar(message:value);
        }
      }).catchError((error) {
        isLoading.value = false;
        print("saveBank " + error.toString());
      });
    } on HttpException catch (error) {
      isLoading.value = false;
      print('saveBank error: $error');
    } finally {
      isLoading.value = false;
    }
  }
  void getAllRegisteredVehicles() async{
    print('============getVehicleZones=============');
    isLoading.value = true;
    try{
      await RemoteServices.getRegisteredVehicles().then((value) {
        registeredVehiclesList.value=value;



        isLoading.value = false;
      }).catchError((error) {
        print("getBankList " + error.toString());
        isLoading.value = false;
      });
    } catch (error) {
      print('getBankList error: $error');
      isLoading.value = false;
    }
  }
  void setSelectedName (String name){
    selectedName.value=name;
  }
}
