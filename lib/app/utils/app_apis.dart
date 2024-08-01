class AppApis{

  static String baseUrl = 'https://eximapi.opuserp.com/';

  static String getAllBanksForAddMoneyApi = '${baseUrl}api/addmoney/GetAllBanksForAddMoney';
  static String getAllInternetBanksForAddMoneyApi = '${baseUrl}api/addmoney/GetAllInternetBankForAddMoney';
  static String getAllCardForAddMoneyApi = '${baseUrl}api/addmoney/GetAllCardsForAddMoney';
  static String saveBank = '${baseUrl}api/addmoney/SaveBank';
  static String getSavedBank = '${baseUrl}api/addmoney/GetSavedBankByCustomerId?customerId=253';
  static String saveCard = '${baseUrl}api/addmoney/saveCard';
  static String getSavedCard = '${baseUrl}api/addmoney/getAllSavedCards';
  static String getAllBridges = '${baseUrl}api/toll/GetAllBridges';
  static String getAllVehicleClasses = '${baseUrl}api/toll/GetAllVehicleClasses';
  static String getAllVehicleZones = '${baseUrl}api/toll/GetAllVehicleZones';
  static String registerVehicles = '${baseUrl}api/toll/RegisterVehicle';
  static String getAllRegisteredVehicles = '${baseUrl}api/toll/GetRegisteredVehicles?customerId=253';
  static String getAllOrganizationTypes = '${baseUrl}api/paybill/GetAllOrganizationTypes';







}