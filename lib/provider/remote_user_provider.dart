import 'package:culturtap/constants/constant.dart';

class remote_user_provider {
  remote_user_provider({
    required this.name,
    required this.countryCode,
    required this.phoneNo,
    required this.profilePic,
    required this.coverPic,
    required this.gender,
    required this.languageSpeak,
    required this.address,
    required this.quote,
    required this.followers,
    required this.followings,
    required this.profession,
    required this.dob,
    required this.btp,
    required this.bta,
    required this.blg,
    required this.reviews,
    required this.pendingRequests,
    required this.totalRequests,
    required this.lat,
    required this.long,
    required this.locationFollow,
    required this.availableTime,
    required this.bandwidth,
  });

  String name = "shubham";
  String countryCode = "+91";
  int phoneNo = 9503444265;
  String profilePic = asset.AVATAR;
  String coverPic = "#";
  String gender = "male";
  String languageSpeak = "english";
  String address = "sector 29, delhi";
  String quote = "god is one";
  int followers = 2;
  int followings = 32;
  String profession = "life guard";
  String dob = "04/10/2004";
  bool btp;
  bool bta;
  bool blg;
  List<List<int>> reviews;
  int pendingRequests;
  int totalRequests;
  int lat;
  int long;
  List<String> locationFollow;
  List<String> availableTime=   [
      "06:00:00",
      "21:00:00"
    ];
  String bandwidth;
}
