import 'package:flutter/material.dart';
import 'package:untitled/app/styles/app_assets.dart';

class Remittance {
  final String name;
  final String assetImage;


  Remittance({
    required this.name,
    required this.assetImage,
  });
}

List<Remittance> remittance = [
  Remittance(name: "পেওনিয়ার ", assetImage: AppAssets.vnsLogo,),
  Remittance(name: "ওয়েস্টার্ন ইউনিয়ন", assetImage: AppAssets.moniLogo,),

];
