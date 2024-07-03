import 'package:flutter/material.dart';
import 'package:untitled/app/styles/app_assets.dart';

class Finance {
  final String name;
  final String assetImage;


  Finance({
    required this.name,
    required this.assetImage,
  });
}

List<Finance> finance = [
  Finance(name: "ব্র্যাক ", assetImage: AppAssets.vnsLogo,),
  Finance(name: " উদ্দিপন", assetImage: AppAssets.moniLogo,),
  Finance(name: " টিএমএসএস ", assetImage: AppAssets.idealLogo,),
  Finance(name: "শক্তি ফাউন্ডেশন ", assetImage: AppAssets.ndcLogo),
  Finance(name: "সিদিপ", assetImage: AppAssets.gregoryLogo),
];
