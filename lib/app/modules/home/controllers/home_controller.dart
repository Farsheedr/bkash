import 'package:get/get.dart';

class HomeController extends GetxController {

  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
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

  var showSchoolList= false.obs;
  var showCollegeList=false.obs;
  var showUniversityList=false.obs;
  var showTrainingList = false.obs;
  var showOtherList = false.obs;
  var showElectricList = false.obs;
  var showGasList = false.obs;
  var showWaterList = false.obs;
  var showInternetList = false.obs;
  var showTelephoneList = false.obs;
  var showTvList = false.obs;
  var showCreditList = false.obs;
  var showGovernmentList = false.obs;
  var showInsuranceList = false.obs;
  var showTrackerList = false.obs;
  var showOther2List = false.obs;


  RxBool isExpanded = false.obs;
  RxInt carouselIndex=0.obs;
  var containerHeight = 200.0.obs;

  void toggleSchoolList(){
    showSchoolList.value=!showSchoolList.value;
  }
  void toggleCollegeList(){
    showCollegeList.value=!showCollegeList.value;
  }
  void toggleUniversityList(){
    showUniversityList.value=!showUniversityList.value;}

  void toggleTrainingList(){
    showTrainingList.value=!showTrainingList.value;

  }
  void toggleOtherList(){
    showOtherList.value=!showOtherList.value;
  }
  void toggleElectricList(){
    showElectricList.value=!showElectricList.value;
  }
  void toggleGasList(){
    showGasList.value=!showGasList.value;
  }
  void toggleWaterList(){
    showWaterList.value=!showWaterList.value;
  }
  void toggleInternetList(){
    showInternetList.value=!showInternetList.value;
  }
  void toggleTelephoneList(){
    showTelephoneList.value=!showTelephoneList.value;
  }
  void toggleTvList(){
    showTvList.value=!showTvList.value;
  }
  void toggleCreditList(){
    showCreditList.value=!showCreditList.value;
  }
  void toggleGovernmentList(){
    showGovernmentList.value=!showGovernmentList.value;
  }
  void toggleInsuranceList(){
    showInsuranceList.value=!showInsuranceList.value;
  }
  void toggleTrackerList(){
    showTrackerList.value=!showTrackerList.value;
  }
   void toggleOther2List(){
     showOther2List.value=!showOther2List.value;
   }

  void toggleExpansion(){
    isExpanded.value=!isExpanded.value;
}
void updateCarouselIndex(int index){
    carouselIndex.value=index;
}


  void increment() => count.value++;
}
