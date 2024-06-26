import 'package:flutter/material.dart';
import 'package:untitled/app/styles/app_assets.dart';

class School {
  final String name;
  final String assetImage;
  final String type;

  School({
    required this.name,
    required this.assetImage,
    required this.type});
}

List<School> schools = [
  School(name: "Viqarunnisa Noon School and College", assetImage: AppAssets.vnsLogo,type: 'স্কুল'),
  School(name: " Monipur Uchha Bidyalay", assetImage: AppAssets.moniLogo,type:"স্কুল"),
  School(name: "Motijheel Ideal School and College", assetImage: AppAssets.idealLogo,type: "স্কুল"),
  // School(name: "Notre Dame College", assetImage: AppAssets.ndcLogo,type:'স্কুল'),
  School(name: "St.Gregory's School and College", assetImage: AppAssets.gregoryLogo,type: 'স্কুল'),
];

class College {
  final String name;
  final String assetImage;
  final String type;

  College({
    required this.name,
    required this.assetImage,
    required this.type});
}

List<School> college = [
  School(name: "XI Class Admission", assetImage: AppAssets.bdLogo,type: 'কলেজ'),
  School(name: " Dhaka College", assetImage: AppAssets.dhakaLogo,type:"কলেজ"),
  School(name: "Chattogram Cantonment Public College", assetImage: AppAssets.ctgLogo,type: "কলেজ"),
   School(name: "Eden Mohila College", assetImage: AppAssets.edenLogo,type:'কলেজ'),
  School(name: "Govt Bangla College", assetImage: AppAssets.banglaLogo,type: 'কলেজ'),
];

class University {
  final String name;
  final String assetImage;
  final String type;

  University({
    required this.name,
    required this.assetImage,
    required this.type});
}

List<School> university = [
  School(name: "BUET", assetImage: AppAssets.buetLogo,type: 'ইউনিভার্সিটি'),
  School(name: " BUET Admission", assetImage: AppAssets.buetLogo,type:"ইউনিভার্সিটি"),
  School(name: "University of Chittagong", assetImage: AppAssets.cuLogo,type: "ইউনিভার্সিটি"),
  School(name: "Ahsanullah University of Science and Technology", assetImage: AppAssets.austLogo,type:'ইউনিভার্সিটি'),
  School(name: "Daffodil University", assetImage: AppAssets.diuLogo,type: 'ইউনিভার্সিটি'),
];
class Training {
  final String name;
  final String assetImage;
  final String type;

  Training({
    required this.name,
    required this.assetImage,
    required this.type});
}

List<School> training = [
  School(name: "BMET", assetImage: AppAssets.bmetLogo,type: 'কলেজ'),
  School(name: " BOESL", assetImage: AppAssets.boeslLogo,type:"ট্রেনিং"),
  School(name: "eShiksa", assetImage: AppAssets.shiksaLogo,type: "ট্রেনিং"),
  School(name: "Orbit Institute of Engineering and Technology", assetImage: AppAssets.oietLogo,type:'ট্রেনিং'),
  School(name: "Ahsanullah Institute of Technical Vocational Education Training", assetImage: AppAssets.aitvetLogo,type: 'ট্রেনিং'),
];

class Other {
  final String name;
  final String assetImage;
  final String type;

  Other({
    required this.name,
    required this.assetImage,
    required this.type});
}

List<School> other = [
  School(name: "Eduman", assetImage: AppAssets.eduLogo,type: 'অন্যান্য'),
  School(name: " Pay2Fee", assetImage: AppAssets.moniLogo,type:"অন্যান্য"),
  School(name: "BTEB", assetImage: AppAssets.btebLogo,type: "অন্যান্য"),
  School(name: "UCC", assetImage: AppAssets.uccLogo,type:'অন্যান্য'),
  School(name: "AZAMPUR DARUL ULUM MADRASAH AND YATIMKHANA", assetImage: AppAssets.darulLogo,type: 'অন্যান্যc'),
];


