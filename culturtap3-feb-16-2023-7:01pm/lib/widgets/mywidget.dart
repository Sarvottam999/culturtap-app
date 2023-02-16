import 'package:culturtap/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class check_user_calender extends StatelessWidget {
  const check_user_calender({Key? key, required this.onTap}) : super(key: key);
// final String symbol;
// final Function onTap();
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color.fromARGB(
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
                    style: textstyleAssets.textstyle(
                        myfontSize: 20.0,
                        myfontWeight: fontwightAssets.Bold,
                        mycolor: colorAssets.ORANGE),
                  ),
                  const Icon(
                    Icons.navigate_next,
                    color: colorAssets.ORANGE,
                  ),
                ],
              ))),
    );
  }
}

class big_button extends StatelessWidget {
  const big_button({super.key, required this.condition, required this.onTap});
  final bool condition;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40),
        child: Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: 63, //height of button
                width: double.infinity, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: condition
                            // !condition.text.isEmpty && meetingTitle == true
                            ? colorAssets.ORANGE
                            : colorAssets.BLACK, //background color of button
                        // side: const BorderSide(
                        //     width: 0,
                        //     color: Color.fromARGB(
                        //         255, 0, 0, 0)), //border width and color
                        elevation: 0, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(3)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: onTap,
                    child: Text("Request Call",
                        style: textstyleAssets.textstyle(
                            myfontSize: 22.0,
                            myfontWeight: fontwightAssets.ExtraBold,
                            mycolor: colorAssets.WHITE))))));
  }
}

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  const myAppBar({super.key, required this.onPressedBack, required this.onPressedPing});
  final Function() onPressedBack;
  final Function() onPressedPing;
   @override
  Size get preferredSize => const Size.fromHeight(100);


  @override
  Widget build(BuildContext context) {
    return AppBar(
    
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
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            TextButton(
              child: const Text(
                "Back",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              onPressed:  onPressedBack
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
               SvgPicture.asset("assets/ping.svg"),
              TextButton(
                child: const Text(
                  "Pings",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                onPressed: onPressedPing
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
    );
  }
}
