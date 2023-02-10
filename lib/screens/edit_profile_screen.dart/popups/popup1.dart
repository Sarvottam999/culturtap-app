// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

//  final small = GoogleFonts.poppins( fontSize: 14, fontWeight: FontWeight.w400,);
//  final smallBold = GoogleFonts.poppins( fontSize: 14, fontWeight: FontWeight.w700,);
//  final bold = GoogleFonts.poppins( fontSize: 22, fontWeight: FontWeight.w900,color: Color(0xffFB8C00));

// class popup1 extends StatelessWidget {
//   const popup1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DialogExample();
    
   
//   }
// }

// class DialogExample extends StatelessWidget {
//   const DialogExample({super.key});


//   void _showDialog(BuildContext context) {

//  Dialog errorDialog = Dialog(
//   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
//   child: Container(
//     height: 350.0,
//     width: 350.0,
   
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Padding(
//           padding:  EdgeInsets.all(15.0),
//           child: Image.asset("lib/popups/watch.png"),
//         ),
//         Container(
//           padding: EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//           Text('Set your clock', style: smallBold),
//           Text('Please provide timing when you will ', style: small),
//           Text('be able to attend the calls from other turists.', style: small),
//           ]
//            )
//           ),
         
//           TextButton(
            
//             onPressed: () {
//           Navigator.of(context).pop();
//         },
//             child: Text('Continue', style:  bold,
//             )
//             )
      
           
//          ],
//     ),
//   ),
// );
// showDialog(
//   context: context, 
//   builder: (BuildContext context) => errorDialog
//   );

 
// }

//   @override
//   Widget build(BuildContext context) {
//     return  (
//       ElevatedButton(
//           child: Text('Alert Dialog'),
//           onPressed: () {
//             _showDialog(context);
//           },
//     ));
//   }
// }
