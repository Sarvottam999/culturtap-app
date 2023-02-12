import 'package:culturtap/screens/home/vio_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class food_page extends StatefulWidget {
  const food_page({super.key});

  @override
  State<food_page> createState() => _food_pageState();
}

class _food_pageState extends State<food_page> {
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF5F5F5),
      padding: EdgeInsets.all(20),
      // height: 222,
      height: 282,
      width: double.infinity,
      // width:375 ,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _builPageItem(index);
        },
      ),
    );
  }

  Widget _builPageItem(int index) {
    return Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Container(
          color: Color(0xffF5F5F5),
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          child: SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(video_detail_screen.RouteNamed);
                  },
                  child: Image.asset(
                    "assets/image/video_player.png",
                    fit: BoxFit.cover,
                  ),
                ),
                footer: Container(
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 56,
                  child: GridTileBar(
                    backgroundColor: Color.fromARGB(221, 255, 255, 255),
                    // leading: IconButton(
                    //         icon: Icon( Icons.favorite  ),
                    //         color: Theme.of(context).accentColor,
                    //         onPressed: () {}
                    // ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Location HSR Layout, Sector 4",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text("Category family",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 12)),
                      ],
                    ),
                    trailing: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 72,
                      height: 56,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.visibility,
                                size: 16,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Text("123",
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 16,
                                color: Colors.red,
                              ),
                              Text("51",
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),

          // color: Color.fromARGB(255, 0, 0, 0),
          height: 30,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.turn_right, color: Color.fromARGB(255, 255, 255, 255)),
              Text("0.7 km",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 12))
            ],
          ),
        ),
      ),
      Align(
        // alignment: Alignment.centerRight,
        child: Container(
          alignment: Alignment(0.7, 0.4),
          child: Container(
            alignment: Alignment.center,
            width: 60,
            height: 45,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.movie, color: Color.fromARGB(255, 255, 255, 255)),
                Text("+4",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 12))
              ],
            ),
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    ]);
  }
}
