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
  RxBool isExpanded = false.obs;
  RxInt carouselIndex=0.obs;

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

  void toggleExpansion(){
    isExpanded.value=!isExpanded.value;
}
void updateCarouselIndex(int index){
    carouselIndex.value=index;
}


  void increment() => count.value++;
}
