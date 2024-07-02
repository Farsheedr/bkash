import 'package:flutter/material.dart';
import 'package:untitled/app/styles/app_assets.dart';

class Electric {
  final String name;
  final String assetImage;
  final String type;

  Electric({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Electric> electric= [
  Electric(name: "Palli Bidyut", assetImage: AppAssets.vnsLogo,type: 'বিদ্যুৎ '),
  Electric(name: " DESCO", assetImage: AppAssets.moniLogo,type:"বিদ্যুৎ"),
  Electric(name: "NESCO", assetImage: AppAssets.idealLogo,type: "বিদ্যুৎ"),
  Electric(name: "DPDC", assetImage: AppAssets.ndcLogo,type:'বিদ্যুৎ'),
  Electric(name: "BPDB", assetImage: AppAssets.gregoryLogo,type: 'বিদ্যুৎ'),
];
class Gas {
  final String name;
  final String assetImage;
  final String type;

  Gas({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Gas> gas= [
  Gas(name: "Titas Gas Postpaid", assetImage: AppAssets.vnsLogo,type: ' গ্যাস'),
  Gas(name: " Karnaphuli Gas", assetImage: AppAssets.moniLogo,type:"গ্যাস"),
  Gas(name: "Jalalabad Gas", assetImage: AppAssets.idealLogo,type: "গ্যাস"),
  Gas(name: "Sundarban Gas", assetImage: AppAssets.ndcLogo,type:'গ্যাস'),
  Gas(name: "Paschimanchal Gas", assetImage: AppAssets.gregoryLogo,type: 'গ্যাস'),
];

class Water {
  final String name;
  final String assetImage;
  final String type;

  Water({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Water> water= [
  Water(name: "Dhaka WASA", assetImage: AppAssets.vnsLogo,type: ' পানি'),
  Water(name: " Chattogram WASA", assetImage: AppAssets.moniLogo,type:"পানি"),
  Water(name: "Rajshahi WASA", assetImage: AppAssets.idealLogo,type: "পানি"),
  Water(name: "Khulna WASA", assetImage: AppAssets.ndcLogo,type:'পানি'),

];

class Internet {
  final String name;
  final String assetImage;
  final String type;

  Internet({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Internet> internet= [
  Internet(name: "Link3", assetImage: AppAssets.vnsLogo,type: ' ইন্টারনেট '),
  Internet(name: " AmberIT", assetImage: AppAssets.moniLogo,type:"ইন্টারনেট"),
  Internet(name: "Carnival", assetImage: AppAssets.idealLogo,type: "ইন্টারনেট"),
  Internet(name: "SamOnline", assetImage: AppAssets.ndcLogo,type:'ইন্টারনেট'),
  Internet(name: "Triangle", assetImage: AppAssets.ndcLogo,type:'ইন্টারনেট'),


];

class Telephone {
  final String name;
  final String assetImage;
  final String type;

  Telephone({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Telephone> telephone= [
  Telephone(name: "BTCL", assetImage: AppAssets.vnsLogo,type: ' টেলিফোন  '),
  Telephone(name: " AmberIT IP Phone", assetImage: AppAssets.moniLogo,type:"টেলিফোন"),
  Telephone(name: "BTCL Alaap", assetImage: AppAssets.idealLogo,type: "টেলিফোন"),
  Telephone(name: "Brilliant Connect", assetImage: AppAssets.ndcLogo,type:'টেলিফোন'),



];
class Tv {
  final String name;
  final String assetImage;
  final String type;

  Tv({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Tv> tv= [
  Tv(name: "AKASH DTH", assetImage: AppAssets.vnsLogo,type:'টিভি '),
  Tv(name: " Bengali Digital", assetImage: AppAssets.moniLogo,type:"টিভি"),
  Tv(name: "BumbelBee", assetImage: AppAssets.idealLogo,type: "টিভি"),
  Tv(name: "Nation Electronics and Cable Networks", assetImage: AppAssets.ndcLogo,type:'টিভি'),
  Tv(name: "RM Satellite Cable Network", assetImage: AppAssets.ndcLogo,type:'টিভি'),
];


class Credit {
  final String name;
  final String assetImage;
  final String type;

  Credit({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Credit> credit= [
  Credit(name: "City Bank Amex Credit Card Bill", assetImage: AppAssets.vnsLogo,type:'ক্রেডিট কার্ড  '),
  Credit(name: " Visa Credit Card Bill", assetImage: AppAssets.moniLogo,type:"ক্রেডিট কার্ড"),

];

class Governemnt {
  final String name;
  final String assetImage;
  final String type;

  Governemnt({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Governemnt> government= [
  Governemnt(name: "NID Service", assetImage: AppAssets.vnsLogo,type:'সরকারি ফি  '),
  Governemnt(name: " Land Development Tax", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),
  Governemnt(name: " E Porcha(Land)", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Governemnt(name: " E-Mutation", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Governemnt(name: " DNCC Holding Tax", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),


];
class Insurance {
  final String name;
  final String assetImage;
  final String type;

  Insurance({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Insurance> insurance= [
  Insurance(name: "Jiban Bima Corporation", assetImage: AppAssets.vnsLogo,type:'সরকারি ফি  '),
  Insurance(name: "MetLife", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),
  Insurance(name: " Alpha Islami Life", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Insurance(name: " Pragati Life", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Insurance(name: " Delta Life", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),


];
class Tracker {
  final String name;
  final String assetImage;
  final String type;

  Tracker({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Tracker> tracker= [
  Tracker(name: "Finder GPS Tracker", assetImage: AppAssets.vnsLogo,type:'সরকারি ফি  '),
  Tracker(name: " Prohori GPS Tracker", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),
  Tracker(name: " OBHAI VTS", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Tracker(name: " Easytrax", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Tracker(name: " Autonemo GPS Tracking", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),


];
class Other {
  final String name;
  final String assetImage;
  final String type;

  Other({
    required this.name,
    required this.assetImage,
    required this.type
  });
}
List<Other> other2= [
  Other(name: "BURO Bangladesh", assetImage: AppAssets.vnsLogo,type:'সরকারি ফি  '),
  Other(name: " IPDC Finance Ltd.", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),
  Other(name: " Shakti Foundation", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Other(name: " Runner Automobile Ltd.", assetImage: AppAssets.moniLogo,type:"সরকারি ফিড"),
  Other(name: " ButterFly", assetImage: AppAssets.moniLogo,type:"সরকারি ফি"),


];








