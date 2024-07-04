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

  // var showSchoolList= false.obs;
  // var showCollegeList=false.obs;
  // var showUniversityList=false.obs;
  // var showTrainingList = false.obs;
  // var showOtherList = false.obs;
  var currentlyOpenList = ''.obs;
  // var showElectricList = false.obs;
  // var showGasList = false.obs;
  // var showWaterList = false.obs;
  // var showInternetList = false.obs;
  // var showTelephoneList = false.obs;
  // var showTvList = false.obs;
  // var showCreditList = false.obs;
  // var showGovernmentList = false.obs;
  // var showInsuranceList = false.obs;
  // var showTrackerList = false.obs;
  // var showOther2List = false.obs;


  RxBool isExpanded = false.obs;
  RxInt carouselIndex=0.obs;
  var containerHeight = 200.0.obs;
  RxBool showBalance = false.obs;
  var selectedIndex = 0.obs;
  var selectedDate = DateTime.now().obs;
  RxBool showFullGrid = false.obs;

  void toggleList(String listName){
    if(currentlyOpenList == listName){
      currentlyOpenList.value = '';
    }else{
      currentlyOpenList.value = listName;
    }
  }
  bool isListOpen(String listName){
    return currentlyOpenList.value == listName;
  }
  void toggleBalanceText() {
    showBalance.value = !showBalance.value;
  }
  void toggleGridExpansion() {
    showFullGrid.value = !showFullGrid.value;
  }









  void toggleExpansion(){
    isExpanded.value=!isExpanded.value;
}
void updateCarouselIndex(int index){
    carouselIndex.value=index;
}


  void increment() => count.value++;

void incrementDate() {
  selectedDate.value = _addMonth(selectedDate.value);
}

void decrementDate() {
  selectedDate.value = _subtractMonth(selectedDate.value);
}

DateTime _addMonth(DateTime date) {
  int year = date.year;
  int month = date.month + 1;
  if (month > 12) {
    month = 1;
    year++;
  }
  int day = date.day;
  int lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day > lastDayOfMonth) {
    day = lastDayOfMonth;
  }
  return DateTime(year, month, day);
}

DateTime _subtractMonth(DateTime date) {
  int year = date.year;
  int month = date.month - 1;
  if (month < 1) {
    month = 12;
    year--;
  }
  int day = date.day;
  int lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day > lastDayOfMonth) {
    day = lastDayOfMonth;
  }
  return DateTime(year, month, day);
}
}
