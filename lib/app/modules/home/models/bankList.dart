import 'package:flutter/material.dart';
import 'package:untitled/app/styles/app_assets.dart';

class Bank {
  final String name;
  final String assetImage;


  Bank({
    required this.name,
    required this.assetImage,
    });
}

List<Bank> bank = [
  Bank(name: "অগ্রণী ব্যাংক ", assetImage: AppAssets.agraniLogo,),
  Bank(name: " এবি ব্যাংক লিমিটেড", assetImage: AppAssets.abLogo,),
  Bank(name: " ব্র্যাক ব্যাংক", assetImage: AppAssets.bracLogo,),
  Bank(name: "বাংলাদেশ ডেভেলপমেনট ব্যাংক লিমিটেড", assetImage: AppAssets.bdblLogo),
  Bank(name: "সিটি ব্যাংক  ", assetImage: AppAssets.cityLogo),
];
