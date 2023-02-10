// frame 14 $ google pixel 2 -170

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

final small = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

class s_1_schedule_intr_call extends StatefulWidget {
  const s_1_schedule_intr_call({super.key});

  @override
  State<s_1_schedule_intr_call> createState() => _s_1_schedule_intr_callState();
}

class _s_1_schedule_intr_callState extends State<s_1_schedule_intr_call> {
  String? pickedDat;
  late String time;
  int? minAfter20;
  int? hrAfter20;
  var a;
  // String meetingTitle = "";
  bool meetingTitle = false;
  TextEditingController timeinput1 = TextEditingController();
  TextEditingController timeinput2 = TextEditingController();

  Widget button() {
    return Container(
        padding: EdgeInsets.only(top: 40),
        child: Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: 63, //height of button
                width: double.infinity, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                         primary:
                            !timeinput1.text.isEmpty && meetingTitle == true
                                ?const Color(0xffFB8C00)
                                :const Color.fromARGB(
                                    255, 0, 0, 0), //background color of button
                        side:const BorderSide(
                            width: 0,
                            color: Color.fromARGB(
                                255, 0, 0, 0)), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(3)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: () {},
                    child: Text("Request Call",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromARGB(255, 255, 255, 255)))))));
  }

  @override
  Widget build(BuildContext context) {
    void initState() {
      super.initState();
      // timeinput1.text = timeinput1.text == null ? "":timeinput1.text;
    }
//////////////////////////      time     //////////////////
    ///
    ///
    ///

    Future<void> _showTimeEg() async {
            final TimeOfDay? result =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
                  DateTime parsedTime =
          DateFormat.jm().parse(result!.format(context).toString());
      print(parsedTime
          .add(Duration(minutes: 20)));  



    }
    Future<void> _showTime() async {
      final TimeOfDay? result =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());

      const TimeOfDay end = TimeOfDay(hour: 0, minute: 20); // 3:00pm
      DateTime parsedTime =
          DateFormat.jm().parse(result!.format(context).toString());
// -------------------------
      DateTime parsedTime2 =
          DateFormat.jm().parse(result.format(context).toString());
      //converting to DateTime so that we can further format on different pattern.
      print(parsedTime
          .add(Duration(minutes: 20))); //output 1970-01-01 22:53:00.000
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);

// -------------------------
      var min = result.minute;
      var hr = result.hour;

      var minaddition = min + 20;
      if (minaddition > 60) {
        hr = hr + 1;
        minaddition = minaddition - 60;
      }

      if (hr == 24 && minaddition > 0) {
        hr = 0;
      }

      print('-- $hr  : $minaddition : {after 20 min }');
      if (result != null) {
        setState(() {
          time = result.format(context);
          hrAfter20 = hr;
          if (hrAfter20! > 12) hrAfter20 = hrAfter20! - 12;

          minAfter20 = minaddition;
          a = result.period.name.toUpperCase();

          // if (hrAfter20! < 12 && hrAfter20! < 12) {
          //   a = "AM";
          // } else {
          //   a = "PM";
          // }

          print(a);

          // _selectedTime = result.format(context);
        });
      }

      setState(() {
        time == null ? timeinput1.text = "" : timeinput1.text = time;
      });
    }

    final callwith = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        "Schedual Call With",
//  6
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    final name = Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Text(
          "Hemant",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ));

    final note1 = Text(
//
      "User provided available time for trip planning interaction calls-",
      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w900,
      ),
    );

    final time2 = Container(
      padding: EdgeInsets.only(top: 10, bottom: 25),
      child: Row(
        children: [
          Icon(Icons.schedule),
          Text(
            "6:00 PM - 11:30 PM India",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );

    final selectDAte = Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          "Select Date",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ));

    final dateButton = SizedBox(
      height: 35,
      width: 170,
      child: TextButton(
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme:const ColorScheme.light(
                        primary: Color(0xffFB8C00), // header background color
                        onPrimary: Color.fromARGB(
                            255, 255, 255, 255), // header text color
                        onSurface: Color(0xffFB8C00), // body text color
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          primary: Colors.black, // button text color
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2100));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              setState(() {
                pickedDat = formattedDate; //set output date to TextField value.
              });
            } else {}
          },
          style: TextButton.styleFrom(
            primary: Color.fromARGB(255, 255, 254, 253),
            backgroundColor: Color(0xffFB8C00), // Background Color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),

              // time
              Text(
                pickedDat != null ? "$pickedDat" : "--",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
             const Icon(
                Icons.expand_more,
                color: Colors.white,
              ),
            ],
          )),
    );

    final tomorrow = Text("*Tomorrow",
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ));

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,

          leadingWidth: 100,
          // centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),

          leading: Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "<",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                TextButton(
                  child:const Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          // ========================
          actions: [
            Container(
              // padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                // this method can help you to set picture for end
                children: [
                  Image.asset("assets/ping.png"),
                  TextButton(
                    child:const  Text(
                      "Pings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],

          toolbarHeight: 105,
          elevation: 0.00,

          title: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
            height: 48.75,
            width: 156,
          ),
        ),

        // ==============================================
        // body:  form_dropout(),
        // body: profile_edit(),
        // body: expert_card,
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 30, bottom: 60),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // --------------- start -------------
                          callwith,
                          name,
                          note1,
                          time2,
                          selectDAte,
                          dateButton,
                          tomorrow,
                        ])),
                CalenderCheck(),
                Container(
                    padding: EdgeInsets.only(top: 40, bottom: 40),
                    child: Text(
                      "*Calendar will help you to select the time for interaction with the user",
                      style: GoogleFonts.poppins(
                        color: Color(0xffFF0000),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Set Time",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )),
                      Text(
                          "Note : the call duration will be  for 20 min so make sure that your questions are planned. ",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Meeting Title",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 57,
                          child: TextField(
                              controller: timeinput2,
                              //editing controller of this TextField
                              decoration: InputDecoration(
                                  //icon of text field
                                  labelText:
                                      "Tyle here ..." //label text of field
                                  ),
                              // readOnly:
                              //     true, //set it true, so that user will not able to edit text
                              onChanged: (String value) async {
                                if (value == "") {
                                  setState(() {
                                    meetingTitle = false;
                                  });
                                } else {
                                  setState(() {
                                    meetingTitle = true;
                                  });
                                }
                              })),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Select your starting time",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 100,
                        child: TextField(
                          style: TextStyle(fontSize: 25.0, color: Colors.black),

                          controller:
                              timeinput1, //editing controller of this TextField
                          decoration: InputDecoration(
                              icon: Icon(Icons.schedule), //icon of text field
                              labelText: "Enter Time" //label text of field
                              ),
                          readOnly:
                              true, //set it true, so that user will not able to edit text
                          onTap: () {
                            _showTimeEg();
                          },
                        ),
                      ),
                      Text("India Time",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 40, bottom: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(" Your selected slot will be ",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.schedule),
                                Text(
                                    hrAfter20 != null
                                        ? '$time - - $hrAfter20:$minAfter20 $a  '
                                        : "",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("  India",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                button(),
              ],
            ))));
  }

  Widget CalenderCheck() {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(
              255, 255, 255, 255), //background color of dropdown button
          // border: (),
          // Border.all(
          //     color: Color(0xffD9D9D9), width: 3), //border of dropdown button
          borderRadius:
              BorderRadius.circular(5), //border raiuds of dropdown button
        ),
        child: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Check User Calender",
                  style: GoogleFonts.poppins(
                    color: Color(0xffFB8C00),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Color(0xffFB8C00),
                ),
              ],
            )));
  }

  // final multiselectNet = Padding(
  //     padding: EdgeInsets.only(top: 20),
  //     child: Container(
  //       padding: EdgeInsets.all(20),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //               " Your selected slot will be",
  //               style: GoogleFonts.poppins(
  //                 fontWeight: FontWeight.w500,
  //                 fontSize: 20,
  //               )),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Icon(
  //                 Icons.schedule,
  //                 color: Colors.white,
  //               ),
  //               Text(
  //                 timeinput1.text,
  //                 style: GoogleFonts.poppins(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.w900,
  //                 ),
  //               ),
  //               Icon(
  //                 Icons.expand_more,
  //                 color: Colors.white,
  //               ),
  //             ],
  //           ),

  //----------------------------------------  button

  // Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   children: [
  //     Flexible(
  //         child: Image.asset(
  //             "assets/pay/gpay.png")), //---------------------
  //     Flexible(child: Image.asset("assets/pay/googlepay.png")),

  //     Flexible(child: Image.asset("assets/pay/Paytm-UPI.png")),
  //     Flexible(child: Image.asset("assets/pay/paypal.png")),
  //     Flexible(child: Image.asset("assets/pay/PayU.png"))
  //   ],
  //   //----------------------------------------   2
  // ),
  // Text("You can save your cards as per new RBI ",
  //     style: GoogleFonts.poppins(
  //       fontWeight: FontWeight.w400,
  //       fontSize: 16,
  //     )),

//         ),
//       ));
}
