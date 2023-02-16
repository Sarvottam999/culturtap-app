import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class api {
  // static const BASE_URL = 'http://0.0.0.0:8000';
  static const BASE_URL = 'http://192.168.5.215:8000';

  static const USER_GET = '/user/get';
  static const USER_UPDATE = '/user/update/';

  // -----------------   cals ----------------
  static const CALL_GET = '/call/get';
  static const CALL_ADD = '/call/add';
  static const CALL_DELETE = "/call/delete/";
  static const CALL_UPDATE= "/call/update";
}

class asset {
  static const CULTURTAPLOGO = 'assets/logo.png';
  static const PINGLOGO = 'assets/ping.svg';
  static const AVATAR = 'assets/editprofile/person-profile-edit.svg';
  static const MOBILE_EDIT_PROFILE = 'assets/mobile-edit-card.svg';
  static const popup_schedule_call =
      "assets/schedule_call/popup_schedule_call.svg";
}

class colorAssets {
  static const ORANGE = Color(0xffFB8C00);
  static const WHITE = Colors.white;
  static const BLACK = Colors.black;
  static const RED = Color(0xffFF0000);
  static const GREEN = Color(0xff0A8100);
}

class fontwightAssets {
  static const Thin = FontWeight.w100;
  static const ExtraLight = FontWeight.w200;
  static const Light = FontWeight.w300;
  static const Regular = FontWeight.w400;
  static const Medium = FontWeight.w500;
  static const SemiBold = FontWeight.w600;
  static const Bold = FontWeight.w700;
  static const ExtraBold = FontWeight.w800;
  static const Blank = FontWeight.w900;
}

class textstyleAssets {
  static textstyle(
      {myfontSize = 14.0,
      myfontWeight = FontWeight.w400,
      mycolor = Colors.black}) {
    return GoogleFonts.poppins(
        fontSize: myfontSize, fontWeight: myfontWeight, color: mycolor);
  }
}

class texttype {
  static final t1 = textstyleAssets.textstyle(
      myfontSize: 20.0, myfontWeight: fontwightAssets.ExtraBold);
// ----------------------------------------------------------------

  static t2(
      {color = colorAssets.BLACK,
      myfontSize = 18.0,
      myfontWeight = fontwightAssets.Bold}) {
    return textstyleAssets.textstyle(
        mycolor: color, myfontSize: myfontSize, myfontWeight: myfontWeight);
  }
// ----------------------------------------------------------------

  static final t3 = textstyleAssets.textstyle(
      myfontSize: 18.0, myfontWeight: fontwightAssets.Regular);
// ----------------------------------------------------------------
}

class cost {
  static const String COST_TRIP_PLANNING_CALL = "500";
}

// SvgPicture.asset(
//   assetName,
//   semanticsLabel: 'Acme Logo'
// );



//Image.assets(
//'assets/img/logo.png',
// height:50;
// weight: 40,
//)

