import 'dart:html';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class request_page extends StatefulWidget {
  const request_page({super.key});

  @override
  State<request_page> createState() => _request_pageState();
}

class _request_pageState extends State<request_page> {
  final _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Column(
        children: [
           Container(
                color: Color.fromARGB(255, 255, 255, 255),
                height: 70,
                width: double.infinity,

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Text("Total requests : 21",style: GoogleFonts.poppins(  fontWeight: FontWeight.w800, fontSize: 18)),
                button,
            
              ]))


        ],
      ),
    );
  }
}

final button = TextButton(
  child: Container(
      height: 35,
      width: 140,
      // padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Pending",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 20)),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 35,
          )
        ],
      )),
  style: TextButton.styleFrom(
    foregroundColor: Color(0xffFB8C00),
    textStyle: TextStyle(color: Color(0xffFB8C00), fontSize: 1),
    side: BorderSide(color: Color(0xffFB8C00), width: 1),
  ),
  onPressed: () {},
);
