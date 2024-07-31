class AppApis{

  static String baseUrl = 'https://eximapi.opuserp.com/';

  static String getAllBanksForAddMoneyApi = '${baseUrl}api/addmoney/GetAllBanksForAddMoney';
  static String getAllInternetBanksForAddMoneyApi = '${baseUrl}api/addmoney/GetAllInternetBankForAddMoney';
  static String getAllCardForAddMoneyApi = '${baseUrl}api/addmoney/GetAllCardsForAddMoney';
  static String saveBank = '${baseUrl}api/addmoney/SaveBank';
  static String getSavedBank = '${baseUrl}api/addmoney/GetSavedBankByCustomerId?customerId=253';
}