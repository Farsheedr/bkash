import 'package:flutter/material.dart';
import 'package:untitled/app/styles/app_assets.dart';

class Donation {
  final String name;
  final String assetImage;


  Donation({
    required this.name,
    required this.assetImage,
  });
}

List<Donation> donation = [
  Donation(name: "অ্যাকশানএইড বাংলাদেশ ", assetImage: AppAssets.vnsLogo,),
  Donation(name: " আঞ্জুমান মফিদুল ইসলাম ", assetImage: AppAssets.moniLogo,),
  Donation(name: " আস-সুন্নাহ ফাউন্ডেশন ", assetImage: AppAssets.idealLogo,),
  Donation(name: "বাংলাদেশ থ্যালাসেমিয়া ফাউন্ডেশন", assetImage: AppAssets.ndcLogo),
  Donation(name: "বিদ্যানন্দ ফাউন্ডেশন  ", assetImage: AppAssets.gregoryLogo),
];