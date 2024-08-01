import 'package:get/get.dart';

import '../../../data/preference_data/remote_services.dart';
import '../models/get_all_organization_types.dart';

class PayBillController extends GetxController {
  RxBool isLoading = false.obs;


  final count = 0.obs;
  @override
  void onInit() {
    getAllOrganizationTypes();
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

  var getOrganizationList = <GetAllOrganizationTypes>[].obs;

  void getAllOrganizationTypes() async{
    print('============getOrganizationTypes=============');
    isLoading.value = true;
    try{
      await RemoteServices.getAllOrganizationTypes().then((value) {
        getOrganizationList.value= value;




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
}
