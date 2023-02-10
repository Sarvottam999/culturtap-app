import 'package:camera/camera.dart';
import 'package:culturtap/mainscreen.dart';
import 'package:culturtap/provider/login-form-provider.dart';
import 'package:culturtap/provider/video_provider.dart';
import 'package:culturtap/screens/add_video_camera/s_1_video_screen.dart';
import 'package:culturtap/screens/add_video_camera/s_2_edit_video.dart';
import 'package:culturtap/screens/add_video_camera/s_3_video_grid.dart';
import 'package:culturtap/screens/add_video_camera/s_4_product_tems.dart';
import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/add_video_form.dart';
import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/form_provider.dart';
import 'package:culturtap/screens/add_video_camera/s_5_add_video_form/s_5_add_video_form.dart';
import 'package:culturtap/screens/edit_profile_screen.dart/myEditSetting.dart';
import 'package:culturtap/screens/home/home_screen.dart';
import 'package:culturtap/screens/home/vio_detail_screen.dart';
import 'package:culturtap/screens/login_screen/auth_screen.dart';
import 'package:culturtap/screens/remote_user/schedule_interaction_call/s_1_schedule_intr_call.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:location/location.dart';


// here all the route are can be regitered for use in 
 
// her all the provider are [provided] to make use  in my aapp
 
 
 


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // camera = await availableCameras();
 
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    MultiProvider(
      providers: [
     ChangeNotifierProvider(  create: (context) => video_provider(),),
     ChangeNotifierProvider(create: (context) => login_form_provider(),),
     ChangeNotifierProvider(create: (context) => FormProvider(),)
    ],
     child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
        ),
        home: s_1_schedule_intr_call(),
        // const 
        // myEditSetting(),
      // AuthScreen(), add
      // ProviderFormPage(),

      
        // s_5_add_video_form(),
        // edit_video_screen(),
        //  video_screen(),
        //  mainscreen(),
        routes: {

          video_detail_screen.RouteNamed: (context) => video_detail_screen(),
          s_1_video_screen.namedroute :(context) => s_1_video_screen(),
          s_2_edit_video_screen.nameroute :(context) => s_2_edit_video_screen(),
          s_3_video_grid_screen_screen.namedRoute :(context) => s_3_video_grid_screen_screen(),
          // s_4_videoItem.namedRoute :(context) => s_4_videoItem(clip: clip, index: index)
          s_5_add_video_form.namedRoute :(context) => s_5_add_video_form(),
          

        },
       ));
  }
}
