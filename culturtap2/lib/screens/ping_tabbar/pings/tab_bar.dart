// import 'package:app_api/others/message_card1.dart';
import './request_page.dart';
import './message_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyPngs_tabbar(),
//     );
//   }
// }

const List<Tab> tabs = <Tab>[
  Tab(
    text: 'Requests',
  ),
  Tab(text: 'Messgages'),
  // Tab(text: 'Second'),
];

class MyPngs_tabbar extends StatelessWidget {
  const MyPngs_tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            // -----------------------  app bar ------------------

            leadingWidth: 100,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            leading: Container(
              padding: const EdgeInsets.fromLTRB(26, 12, 0, 0),
              child: Row(
                children: [
                  Text(
                    "<",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  TextButton(
                    child: Text(
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
            toolbarHeight: 105,
            elevation: 0.00,
            title:
                // Text("demo")
                Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
            ),
            // -----------------------  END  ------------------

            // -----------------------  tab baar ------------------

            bottom: TabBar(
              labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w800, fontSize: 20),
              indicatorWeight: 6,
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              labelColor: Color(0xffFB8C00),
              indicatorColor: Color(0xffFB8C00),
              unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
              tabs: tabs,
            ),

            // -----------------------  END  -----------------
          ),
          body: const TabBarView(
            children: [request_page(), message_page()],

            //  tabs.map((Tab tab) {
            //   return Center(
            //     child: Text(
            //       '${tab.text!} Tab',
            //       style: Theme.of(context).textTheme.headlineSmall,
            //     ), //there are two 
            //   );
            // }).toList(),
          ),
        );
      }),
    );
  }
}
