import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_fonts/google_fonts.dart';

class request_card extends StatelessWidget {
  const request_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        alignment: Alignment.center,

        decoration: BoxDecoration(
          //DecorationImage
          border: Border.all(
            color: Color.fromARGB(255, 255, 255, 255),
            width: 8,
          ), //Border.all
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 243, 241, 241),
              offset: const Offset(
                5.0,
                5.0,
              ), //Offset
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ), //B
        padding: EdgeInsets.all(2),
        // color: Colors.black,
        height: 360,
        width: double.infinity,

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
// ----------------------------------------
            Container(
              // oxDecorati

              padding: EdgeInsets.fromLTRB(0, 25, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("person.png"),
                        Image.asset("connect.png"),
                        // Icon(
                        //   Icons.account_circle,
                        // ),
                        Icon(
                          Icons.account_circle_outlined,
                          size: 38,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 16,
                    // padding: EdgeInsets.all(4),
                    color: Color(0xffFF0000),
                    child: Text("Request Pending",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12)),
                  )
                ],
              ),
            ),
// ----------------------------------------
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Trip planning call with",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 18))),
                  Container(
                    child: Text("Hemant",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, fontSize: 18)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),

// ----------------------------------------

            Container(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                      child: Icon(
                    Icons.schedule,
                  )),
                  Container(
                    child: Text("8:00 PM - 8:20 PM India",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 18)),
                  )
                ],
              ),
            ),
// ----------------------------------------
            Container(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                      child: Icon(
                    Icons.date_range,
                  )),
                  Container(
                    child: Text("Date : 15 Nov 2022 'Monday",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 18)),
                  )
                ],
              ),
            ),
// ----------------------------------------
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Trip to Benglore",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 20)),
            ),
// ----------------------------------------
            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: TextButton(
                child: Text(
                  "Cancel",
                  style: GoogleFonts.poppins(
                      color: Color(0xffFB8C00),
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
