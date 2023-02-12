// To parse this JSON data, do
//
//     final list_user_model = list_user_modelFromJson(jsonString);

import 'dart:convert';

List<list_user_model> list_user_modelFromJson(String str) => List<list_user_model>.from(json.decode(str).map((x) => list_user_model.fromJson(x)));

String list_user_modelToJson(List<list_user_model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class list_user_model {
    list_user_model({
        required this.uid,
        required this.name,
        required this.countryCode,
        required this.phoneNo,
        this.profilePic,
        this.coverPic,
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
        this.reviews,
        required this.pendingRequests,
        required this.totalRequests,
        required this.lat,
        required this.long,
        required this.locationFollow,
        required this.availableTime,
        required this.bandwidth,
    });

    int uid;
    String name;
    String countryCode;
    int phoneNo;
    String? profilePic;
    String? coverPic;
    String gender;
    String languageSpeak;
    String address;
    String quote;
    int followers;
    int followings;
    String profession;
    String dob;
    bool btp;
    bool bta;
    bool blg;
    List<List<int>>? reviews;
    int pendingRequests;
    int totalRequests;
    double lat;
    double long;
    List<String> locationFollow;
    List<String> availableTime;
    String bandwidth;

    factory list_user_model.fromJson(Map<String, dynamic> json) => list_user_model(
        uid: json["uid"],
        name: json["name"],
        countryCode: json["countryCode"],
        phoneNo: json["phoneNo"],
        profilePic: json["profilePic"],
        coverPic: json["coverPic"],
        gender: json["gender"],
        languageSpeak: json["languageSpeak"],
        address: json["address"],
        quote: json["quote"],
        followers: json["followers"],
        followings: json["followings"],
        profession: json["profession"],
        dob: json["dob"],
        btp: json["btp"],
        bta: json["bta"],
        blg: json["blg"],
        reviews: json["reviews"] == null ? [] : List<List<int>>.from(json["reviews"]!.map((x) => List<int>.from(x.map((x) => x)))),
        pendingRequests: json["pendingRequests"],
        totalRequests: json["totalRequests"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        locationFollow: List<String>.from(json["locationFollow"].map((x) => x)),
        availableTime: List<String>.from(json["availableTime"].map((x) => x)),
        bandwidth: json["bandwidth"],
    );

    Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "countryCode": countryCode,
        "phoneNo": phoneNo,
        "profilePic": profilePic,
        "coverPic": coverPic,
        "gender": gender,
        "languageSpeak": languageSpeak,
        "address": address,
        "quote": quote,
        "followers": followers,
        "followings": followings,
        "profession": profession,
        "dob": dob,
        "btp": btp,
        "bta": bta,
        "blg": blg,
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "pendingRequests": pendingRequests,
        "totalRequests": totalRequests,
        "lat": lat,
        "long": long,
        "locationFollow": List<dynamic>.from(locationFollow.map((x) => x)),
        "availableTime": List<dynamic>.from(availableTime.map((x) => x)),
        "bandwidth": bandwidth,
    };
}
